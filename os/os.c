
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <umka_api.h>

#ifdef _WIN32
#include <windows.h>

#include <direct.h>
#include <fileapi.h>
#include <winbase.h>
#define stat _stat
#else
#include <dirent.h>
#include <unistd.h>
#endif

// fn umc__mkdir(path: string): int
void umc__mkdir(UmkaStackSlot *p, UmkaStackSlot *r) {
  char *path = p[0].ptrVal;

#ifdef _WIN32
  r->intVal = _mkdir(path) ? errno : 0;
#else
  r->intVal = mkdir(path, 0777) ? errno : 0;
#endif
}

// fn umc__remove(path: string): int
void umc__remove(UmkaStackSlot *p, UmkaStackSlot *r) {
  char *path = p[0].ptrVal;

  r->intVal = remove(path) ? errno : 0;
}

// fn umc__strerror(errno: int): string
void umc__strerror(UmkaStackSlot *p, UmkaStackSlot *r) {
  int errno_ = p[0].intVal;
  UmkaAPI *api = umkaGetAPI(r->ptrVal);
  r->ptrVal = api->umkaMakeStr(r->ptrVal, strerror(errno_));
}

// fn umc__link(target: str, linkpath: str): int
void umc__link(UmkaStackSlot *p, UmkaStackSlot *r) {
  char *target = p[1].ptrVal;
  char *linkpath = p[0].ptrVal;
  r->intVal = 0;

#ifdef _WIN32
  struct stat st;
  {
    char sep = '\\';
    char *link_dir = strrchr(linkpath, '\\');
    if (link_dir == NULL) {
      link_dir = strrchr(linkpath, '/');
      sep = '/';
    }

    if (link_dir == NULL)
      link_dir = linkpath;

    size_t link_start_len = link_dir - linkpath;
    char *target_rel = malloc(link_start_len + 1 + strlen(target) + 1);
    if (target_rel == NULL) {
      r->intVal = ENOMEM;
      return;
    }

    memcpy(target_rel, linkpath, link_start_len);
    target_rel[link_start_len] = sep;
    memcpy(target_rel + link_start_len + 1, target, strlen(target) + 1);

    if (stat(target_rel, &st)) {
      r->intVal = errno;
      return;
    }

    free(target_rel);
  }

  DWORD flag = 0x2;
  if (S_ISDIR(st.st_mode))
    flag |= 0x1;
  r->intVal = CreateSymbolicLinkA(linkpath, target, flag) ? 0 : EAGAIN;
#else
  r->intVal = symlink(target, linkpath) ? errno : 0;
#endif
}

// fn umc__listdir(path: str, files: ^[]str, strArrType: ^void): int
void umc__listdir(UmkaStackSlot *p, UmkaStackSlot *r) {
  char *path = p[2].ptrVal;
  UmkaDynArray(char *) *files = p[1].ptrVal;
  void *str_arr_type = p[0].ptrVal;
  void *umka = r->ptrVal;
  UmkaAPI *api = umkaGetAPI(umka);

#ifdef _WIN32
  int count = 0;
  HANDLE hfind;
  WIN32_FIND_DATA data;

  char *path_ = malloc(strlen(path) + 3);
  strcpy(path_, path);
  strcat(path_, "\\*");

  if ((hfind = FindFirstFile(path_, &data)) != INVALID_HANDLE_VALUE) {
    do {
      ++count;
    } while (FindNextFile(hfind, &data));
    FindClose(hfind);
  } else {
    r->intVal = ENOENT;
    return;
  }

  api->umkaMakeDynArray(umka, files, str_arr_type, count);

  hfind = FindFirstFile(path_, &data);
  int i = 0;
  do {
    files->data[i++] = api->umkaMakeStr(umka, data.cFileName);
  } while (FindNextFile(hfind, &data));

  FindClose(hfind);
#else
  struct dirent *e = NULL;
  DIR *d = opendir(path);
  if (d == NULL) {
    r->intVal = errno;
    return;
  }

  long start = telldir(d);

  int count = 0;
  while ((e = readdir(d)) != NULL)
    ++count;

  api->umkaMakeDynArray(umka, files, str_arr_type, count);

  seekdir(d, start);
  for (int i = 0; (e = readdir(d)) != NULL; i++)
    files->data[i] = api->umkaMakeStr(umka, e->d_name);

  closedir(d);
#endif
  r->intVal = 0;
}

// fn umc__isfile(path: str): bool
void umc__isfile(UmkaStackSlot *p, UmkaStackSlot *r) {
  char *path = p[0].ptrVal;
  r->intVal = 0;

  struct stat st;
  if (stat(path, &st))
    return;

  r->intVal = S_ISREG(st.st_mode);
}

// fn umc__isdir(path: str): bool
void umc__isdir(UmkaStackSlot *p, UmkaStackSlot *r) {
  char *path = p[0].ptrVal;
  r->intVal = 0;

  struct stat st;
  if (stat(path, &st))
    return;

  r->intVal = S_ISDIR(st.st_mode);
}

// fn umc__islink(path: str): bool
void umc__islink(UmkaStackSlot *p, UmkaStackSlot *r) {
  char *path = p[0].ptrVal;
  r->intVal = 0;

#ifdef _WIN32
  DWORD atts = GetFileAttributes(path);

  if (atts == INVALID_FILE_ATTRIBUTES)
    return;

  r->intVal = !!(atts & FILE_ATTRIBUTE_REPARSE_POINT);
#else
  struct stat st;
  if (lstat(path, &st))
    return;

  r->intVal = S_ISLNK(st.st_mode);
#endif
}

// fn umc__chmod(path: str, mode: uint32): int
void umc__chmod(UmkaStackSlot *p, UmkaStackSlot *r) {
  char *path = p[1].ptrVal;
  int mode = p[0].intVal;
  r->intVal = chmod(path, mode);
}

// fn umc__get_plat(): Platform
void umc__get_plat(UmkaStackSlot *p, UmkaStackSlot *r) {
#ifdef _POSIX_VERSION
  r->intVal = 0;
#elif defined(_WIN32)
  r->intVal = 1;
#elif defined(EMSCRIPTEN)
  r->intVal = 2;
#else
  r->intVal = 3;
#endif
}

// fn umc__getcwd(out: ^str): Error
void umc__getcwd(UmkaStackSlot *p, UmkaStackSlot *r) {
  char **out = p[0].ptrVal;
  void *umka = r->ptrVal;
  UmkaAPI *api = umkaGetAPI(umka);
  r->intVal = 0;

  char buf[1024];

#ifdef _WIN32
  if (_getcwd(buf, sizeof(buf)) == NULL) {
    r->intVal = errno;
    return;
  }
#else
  if (getcwd(buf, sizeof(buf)) == NULL) {
    r->intVal = errno;
    return;
  }
#endif

  *out = api->umkaMakeStr(umka, buf);
}

// fn umc__setenv(name: str, value: str): int
void umc__setenv(UmkaStackSlot *p, UmkaStackSlot *r) {
  char *name = p[1].ptrVal;
  char *value = p[0].ptrVal;

#ifdef _WIN32
  if (SetEnvironmentVariable(name, value) == 0) {
    r->intVal = EPERM;
    return;
  }
#else
  r->intVal = setenv(name, value, 1);
#endif
}
