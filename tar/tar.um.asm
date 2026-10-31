
Module: /home/marek/dev/umlibs/tar/tar.um

000000000    210                         GOTO 6051


Module: /home/marek/dev/umlibs/tar/std.um

000000001    244                         GOTO 943


Function: tobytes

000000002     14                  ENTER_FRAME 9
000000003      8                   PUSH_LOCAL ^ 24
000000004      8                         PUSH int 0
000000005      8                       BINARY == ^ 8
000000006      8                      GOTO_IF 8

000000007     10                         GOTO 10

000000008      9                         PUSH ^ 0x557ddb9c8100
000000009      9                 CALL_BUILTIN void error
000000010     11                         PUSH ^ 0x557ddb9c8950
000000011     11               PUSH_LOCAL_PTR 24
000000012     11                 CALL_BUILTIN interface sizeofself
000000013     11               PUSH_LOCAL_PTR -32
000000014     11                 CALL_BUILTIN [] make
000000015     11               PUSH_LOCAL_PTR -80
000000016     11                 SWAP; ASSIGN [] 24
000000017     12                    PUSH_ZERO 2
000000018     12               PUSH_LOCAL_PTR -80
000000019     12                         PUSH int 0
000000020     12             GET_DYNARRAY_PTR
000000021     12               CHANGE_REF_CNT ++ ^void
000000022     12                   PUSH_LOCAL ^ 24
000000023     12               CHANGE_REF_CNT ++ ^void
000000024     12               PUSH_LOCAL_PTR 24
000000025     12                 CALL_BUILTIN interface sizeofself
000000026     12                         CALL <unknown> (1)
000000027     13               PUSH_LOCAL_PTR -80
000000028     13                   PUSH_LOCAL ^ 16
000000029     13                 SWAP; ASSIGN [] 24
000000030     13                   PUSH_LOCAL ^ 16
000000031     13               CHANGE_REF_CNT ++ []uint8
000000032     13                      POP_REG 0
000000033     14                         GOTO 34

000000034     14                   PUSH_LOCAL interface 40
000000035     14               CHANGE_REF_CNT -- interface; POP
000000036     14                   PUSH_LOCAL interface 24
000000037     14               CHANGE_REF_CNT -- interface; POP
000000038     14                   PUSH_LOCAL [] -80
000000039     14               CHANGE_REF_CNT -- []uint8; POP
000000040     14                  LEAVE_FRAME
000000041     14                       RETURN 5


Function: frombytes

000000042     27                  ENTER_FRAME 0
000000043     17                   PUSH_LOCAL ^ 40
000000044     17                         PUSH int 0
000000045     17                       BINARY == ^ 8
000000046     17                      GOTO_IF 48

000000047     19                         GOTO 50

000000048     18                         PUSH ^ 0x557ddb9cd100
000000049     18                 CALL_BUILTIN void error
000000050     20               PUSH_LOCAL_PTR 40
000000051     20                 CALL_BUILTIN interface selfhasptr
000000052     20                      GOTO_IF 54

000000053     22                         GOTO 56

000000054     21                         PUSH ^ 0x557ddb9cd980
000000055     21                 CALL_BUILTIN void error
000000056     23               PUSH_LOCAL_PTR 40
000000057     23                 CALL_BUILTIN interface sizeofself
000000058     23               PUSH_LOCAL_PTR 16
000000059     23                 CALL_BUILTIN [] len
000000060     23                       BINARY != int 8
000000061     23                      GOTO_IF 63

000000062     25                         GOTO 65

000000063     24                         PUSH ^ 0x557ddb9ce210
000000064     24                 CALL_BUILTIN void error
000000065     26                    PUSH_ZERO 2
000000066     26                   PUSH_LOCAL ^ 40
000000067     26               CHANGE_REF_CNT ++ ^void
000000068     26               PUSH_LOCAL_PTR 16
000000069     26                         PUSH int 0
000000070     26             GET_DYNARRAY_PTR
000000071     26               CHANGE_REF_CNT ++ ^void
000000072     26               PUSH_LOCAL_PTR 40
000000073     26                 CALL_BUILTIN interface sizeofself
000000074     26                         CALL <unknown> (1)
000000075     27                   PUSH_LOCAL interface 56
000000076     27               CHANGE_REF_CNT -- interface; POP
000000077     27                   PUSH_LOCAL interface 40
000000078     27               CHANGE_REF_CNT -- interface; POP
000000079     27                   PUSH_LOCAL [] 16
000000080     27               CHANGE_REF_CNT -- []uint8; POP
000000081     27                  LEAVE_FRAME
000000082     27                       RETURN 7

000000083    244                         GOTO 953


Function: fopen

000000084     40                  ENTER_FRAME 1
000000085     40                    PUSH_ZERO 2
000000086     40                   PUSH_LOCAL str 24
000000087     40               CHANGE_REF_CNT ++ str
000000088     40                   PUSH_LOCAL str 16
000000089     40               CHANGE_REF_CNT ++ str
000000090     40                         CALL <unknown> (83)
000000091     40                     PUSH_REG 0
000000092     40                      POP_REG 0
000000093     40                         GOTO 94

000000094     40                   PUSH_LOCAL interface 32
000000095     40               CHANGE_REF_CNT -- interface; POP
000000096     40                   PUSH_LOCAL str 24
000000097     40               CHANGE_REF_CNT -- str; POP
000000098     40                   PUSH_LOCAL str 16
000000099     40               CHANGE_REF_CNT -- str; POP
000000100     40                  LEAVE_FRAME
000000101     40                       RETURN 4

000000102    244                         GOTO 963


Function: fclose

000000103     43                  ENTER_FRAME 0
000000104     43                    PUSH_ZERO 2
000000105     43                   PUSH_LOCAL ^ 16
000000106     43               CHANGE_REF_CNT ++ File
000000107     43                         CALL <unknown> (102)
000000108     43                     PUSH_REG 0
000000109     43                      POP_REG 0
000000110     43                         GOTO 111

000000111     43                   PUSH_LOCAL interface 24
000000112     43               CHANGE_REF_CNT -- interface; POP
000000113     43                   PUSH_LOCAL ^ 16
000000114     43               CHANGE_REF_CNT -- File; POP
000000115     43                  LEAVE_FRAME
000000116     43                       RETURN 3

000000117    244                         GOTO 971


Function: fread

000000118     63                  ENTER_FRAME 3
000000119     47                   PUSH_LOCAL ^ 32
000000120     47                         PUSH int 0
000000121     47                       BINARY == ^ 8
000000122     47                      GOTO_IF 124

000000123     49                         GOTO 126

000000124     48                         PUSH ^ 0x557ddb9d95d0
000000125     48                 CALL_BUILTIN void error
000000126     50               PUSH_LOCAL_PTR 16
000000127     50                  ASSERT_TYPE ^[]int8
000000128     50               CHANGE_REF_CNT ++ ^[]int8
000000129     50               PUSH_LOCAL_PTR -16
000000130     50                 SWAP; ASSIGN ^ 8
000000131     50                   PUSH_LOCAL ^ -16
000000132     50                         PUSH int 0
000000133     50                       BINARY != ^ 8
000000134     50                      GOTO_IF 136

000000135     52                         GOTO 153

000000136     51                    PUSH_ZERO 2
000000137     51                   PUSH_LOCAL ^ -16
000000138     51                         PUSH int 0
000000139     51             GET_DYNARRAY_PTR
000000140     51               CHANGE_REF_CNT ++ ^void
000000141     51                   PUSH_LOCAL ^ -16
000000142     51                        DEREF []
000000143     51                 CALL_BUILTIN [] len
000000144     51                         PUSH int 1
000000145     51                   PUSH_LOCAL ^ 32
000000146     51               CHANGE_REF_CNT ++ File
000000147     51                         CALL <unknown> (117)
000000148     51                     PUSH_REG 0
000000149     51                      POP_REG 0
000000150     51                   PUSH_LOCAL ^ -16
000000151     51               CHANGE_REF_CNT -- ^[]int8; POP
000000152     63                         GOTO 231

000000153     52                   PUSH_LOCAL ^ -16
000000154     52               CHANGE_REF_CNT -- ^[]int8; POP
000000155     53               PUSH_LOCAL_PTR 16
000000156     53                  ASSERT_TYPE ^[]uint8
000000157     53               CHANGE_REF_CNT ++ ^[]uint8
000000158     53               PUSH_LOCAL_PTR -24
000000159     53                 SWAP; ASSIGN ^ 8
000000160     53                   PUSH_LOCAL ^ -24
000000161     53                         PUSH int 0
000000162     53                       BINARY != ^ 8
000000163     53                      GOTO_IF 165

000000164     55                         GOTO 182

000000165     54                    PUSH_ZERO 2
000000166     54                   PUSH_LOCAL ^ -24
000000167     54                         PUSH int 0
000000168     54             GET_DYNARRAY_PTR
000000169     54               CHANGE_REF_CNT ++ ^void
000000170     54                   PUSH_LOCAL ^ -24
000000171     54                        DEREF []
000000172     54                 CALL_BUILTIN [] len
000000173     54                         PUSH int 1
000000174     54                   PUSH_LOCAL ^ 32
000000175     54               CHANGE_REF_CNT ++ File
000000176     54                         CALL <unknown> (117)
000000177     54                     PUSH_REG 0
000000178     54                      POP_REG 0
000000179     54                   PUSH_LOCAL ^ -24
000000180     54               CHANGE_REF_CNT -- ^[]uint8; POP
000000181     63                         GOTO 231

000000182     55                   PUSH_LOCAL ^ -24
000000183     55               CHANGE_REF_CNT -- ^[]uint8; POP
000000184     56               PUSH_LOCAL_PTR 16
000000185     56                  ASSERT_TYPE ^[]char
000000186     56               CHANGE_REF_CNT ++ ^[]char
000000187     56               PUSH_LOCAL_PTR -32
000000188     56                 SWAP; ASSIGN ^ 8
000000189     56                   PUSH_LOCAL ^ -32
000000190     56                         PUSH int 0
000000191     56                       BINARY != ^ 8
000000192     56                      GOTO_IF 194

000000193     58                         GOTO 211

000000194     57                    PUSH_ZERO 2
000000195     57                   PUSH_LOCAL ^ -32
000000196     57                         PUSH int 0
000000197     57             GET_DYNARRAY_PTR
000000198     57               CHANGE_REF_CNT ++ ^void
000000199     57                   PUSH_LOCAL ^ -32
000000200     57                        DEREF []
000000201     57                 CALL_BUILTIN [] len
000000202     57                         PUSH int 1
000000203     57                   PUSH_LOCAL ^ 32
000000204     57               CHANGE_REF_CNT ++ File
000000205     57                         CALL <unknown> (117)
000000206     57                     PUSH_REG 0
000000207     57                      POP_REG 0
000000208     57                   PUSH_LOCAL ^ -32
000000209     57               CHANGE_REF_CNT -- ^[]char; POP
000000210     63                         GOTO 231

000000211     58                   PUSH_LOCAL ^ -32
000000212     58               CHANGE_REF_CNT -- ^[]char; POP
000000213     59               PUSH_LOCAL_PTR 16
000000214     59                 CALL_BUILTIN interface selfhasptr
000000215     59                      GOTO_IF 217

000000216     61                         GOTO 219

000000217     60                         PUSH ^ 0x557ddb9e4e30
000000218     60                 CALL_BUILTIN void error
000000219     62                    PUSH_ZERO 2
000000220     62                   PUSH_LOCAL ^ 16
000000221     62               CHANGE_REF_CNT ++ ^void
000000222     62               PUSH_LOCAL_PTR 16
000000223     62                 CALL_BUILTIN interface sizeofself
000000224     62                         PUSH int 1
000000225     62                   PUSH_LOCAL ^ 32
000000226     62               CHANGE_REF_CNT ++ File
000000227     62                         CALL <unknown> (117)
000000228     62                     PUSH_REG 0
000000229     62                      POP_REG 0
000000230     63                         GOTO 231

000000231     63                   PUSH_LOCAL interface 40
000000232     63               CHANGE_REF_CNT -- interface; POP
000000233     63                   PUSH_LOCAL ^ 32
000000234     63               CHANGE_REF_CNT -- File; POP
000000235     63                   PUSH_LOCAL interface 16
000000236     63               CHANGE_REF_CNT -- interface; POP
000000237     63                  LEAVE_FRAME
000000238     63                       RETURN 5

000000239    244                         GOTO 981


Function: fwrite

000000240     83                  ENTER_FRAME 3
000000241     67                   PUSH_LOCAL ^ 32
000000242     67                         PUSH int 0
000000243     67                       BINARY == ^ 8
000000244     67                      GOTO_IF 246

000000245     69                         GOTO 248

000000246     68                         PUSH ^ 0x557ddb9e9930
000000247     68                 CALL_BUILTIN void error
000000248     70               PUSH_LOCAL_PTR 16
000000249     70                  ASSERT_TYPE ^[]int8
000000250     70               CHANGE_REF_CNT ++ ^[]int8
000000251     70               PUSH_LOCAL_PTR -16
000000252     70                 SWAP; ASSIGN ^ 8
000000253     70                   PUSH_LOCAL ^ -16
000000254     70                         PUSH int 0
000000255     70                       BINARY != ^ 8
000000256     70                      GOTO_IF 258

000000257     72                         GOTO 275

000000258     71                    PUSH_ZERO 2
000000259     71                   PUSH_LOCAL ^ -16
000000260     71                         PUSH int 0
000000261     71             GET_DYNARRAY_PTR
000000262     71               CHANGE_REF_CNT ++ ^void
000000263     71                   PUSH_LOCAL ^ -16
000000264     71                        DEREF []
000000265     71                 CALL_BUILTIN [] len
000000266     71                         PUSH int 1
000000267     71                   PUSH_LOCAL ^ 32
000000268     71               CHANGE_REF_CNT ++ File
000000269     71                         CALL <unknown> (239)
000000270     71                     PUSH_REG 0
000000271     71                      POP_REG 0
000000272     71                   PUSH_LOCAL ^ -16
000000273     71               CHANGE_REF_CNT -- ^[]int8; POP
000000274     83                         GOTO 353

000000275     72                   PUSH_LOCAL ^ -16
000000276     72               CHANGE_REF_CNT -- ^[]int8; POP
000000277     73               PUSH_LOCAL_PTR 16
000000278     73                  ASSERT_TYPE ^[]uint8
000000279     73               CHANGE_REF_CNT ++ ^[]uint8
000000280     73               PUSH_LOCAL_PTR -24
000000281     73                 SWAP; ASSIGN ^ 8
000000282     73                   PUSH_LOCAL ^ -24
000000283     73                         PUSH int 0
000000284     73                       BINARY != ^ 8
000000285     73                      GOTO_IF 287

000000286     75                         GOTO 304

000000287     74                    PUSH_ZERO 2
000000288     74                   PUSH_LOCAL ^ -24
000000289     74                         PUSH int 0
000000290     74             GET_DYNARRAY_PTR
000000291     74               CHANGE_REF_CNT ++ ^void
000000292     74                   PUSH_LOCAL ^ -24
000000293     74                        DEREF []
000000294     74                 CALL_BUILTIN [] len
000000295     74                         PUSH int 1
000000296     74                   PUSH_LOCAL ^ 32
000000297     74               CHANGE_REF_CNT ++ File
000000298     74                         CALL <unknown> (239)
000000299     74                     PUSH_REG 0
000000300     74                      POP_REG 0
000000301     74                   PUSH_LOCAL ^ -24
000000302     74               CHANGE_REF_CNT -- ^[]uint8; POP
000000303     83                         GOTO 353

000000304     75                   PUSH_LOCAL ^ -24
000000305     75               CHANGE_REF_CNT -- ^[]uint8; POP
000000306     76               PUSH_LOCAL_PTR 16
000000307     76                  ASSERT_TYPE ^[]char
000000308     76               CHANGE_REF_CNT ++ ^[]char
000000309     76               PUSH_LOCAL_PTR -32
000000310     76                 SWAP; ASSIGN ^ 8
000000311     76                   PUSH_LOCAL ^ -32
000000312     76                         PUSH int 0
000000313     76                       BINARY != ^ 8
000000314     76                      GOTO_IF 316

000000315     78                         GOTO 333

000000316     77                    PUSH_ZERO 2
000000317     77                   PUSH_LOCAL ^ -32
000000318     77                         PUSH int 0
000000319     77             GET_DYNARRAY_PTR
000000320     77               CHANGE_REF_CNT ++ ^void
000000321     77                   PUSH_LOCAL ^ -32
000000322     77                        DEREF []
000000323     77                 CALL_BUILTIN [] len
000000324     77                         PUSH int 1
000000325     77                   PUSH_LOCAL ^ 32
000000326     77               CHANGE_REF_CNT ++ File
000000327     77                         CALL <unknown> (239)
000000328     77                     PUSH_REG 0
000000329     77                      POP_REG 0
000000330     77                   PUSH_LOCAL ^ -32
000000331     77               CHANGE_REF_CNT -- ^[]char; POP
000000332     83                         GOTO 353

000000333     78                   PUSH_LOCAL ^ -32
000000334     78               CHANGE_REF_CNT -- ^[]char; POP
000000335     79               PUSH_LOCAL_PTR 16
000000336     79                 CALL_BUILTIN interface selfhasptr
000000337     79                      GOTO_IF 339

000000338     81                         GOTO 341

000000339     80                         PUSH ^ 0x557ddb9f5040
000000340     80                 CALL_BUILTIN void error
000000341     82                    PUSH_ZERO 2
000000342     82                   PUSH_LOCAL ^ 16
000000343     82               CHANGE_REF_CNT ++ ^void
000000344     82               PUSH_LOCAL_PTR 16
000000345     82                 CALL_BUILTIN interface sizeofself
000000346     82                         PUSH int 1
000000347     82                   PUSH_LOCAL ^ 32
000000348     82               CHANGE_REF_CNT ++ File
000000349     82                         CALL <unknown> (239)
000000350     82                     PUSH_REG 0
000000351     82                      POP_REG 0
000000352     83                         GOTO 353

000000353     83                   PUSH_LOCAL interface 40
000000354     83               CHANGE_REF_CNT -- interface; POP
000000355     83                   PUSH_LOCAL ^ 32
000000356     83               CHANGE_REF_CNT -- File; POP
000000357     83                   PUSH_LOCAL interface 16
000000358     83               CHANGE_REF_CNT -- interface; POP
000000359     83                  LEAVE_FRAME
000000360     83                       RETURN 5

000000361    244                         GOTO 991


Function: fseek

000000362     91                  ENTER_FRAME 0
000000363     87                   PUSH_LOCAL ^ 32
000000364     87                         PUSH int 0
000000365     87                       BINARY == ^ 8
000000366     87                      GOTO_IF 368

000000367     89                         GOTO 370

000000368     88                         PUSH ^ 0x557ddb9f9310
000000369     88                 CALL_BUILTIN void error
000000370     90                    PUSH_ZERO 2
000000371     90                   PUSH_LOCAL ^ 32
000000372     90               CHANGE_REF_CNT ++ File
000000373     90                   PUSH_LOCAL int 24
000000374     90                   PUSH_LOCAL int 16
000000375     90                         CALL <unknown> (361)
000000376     90                     PUSH_REG 0
000000377     90                      POP_REG 0
000000378     91                         GOTO 379

000000379     91                   PUSH_LOCAL interface 40
000000380     91               CHANGE_REF_CNT -- interface; POP
000000381     91                   PUSH_LOCAL ^ 32
000000382     91               CHANGE_REF_CNT -- File; POP
000000383     91                  LEAVE_FRAME
000000384     91                       RETURN 5

000000385    244                         GOTO 999


Function: ftell

000000386     99                  ENTER_FRAME 0
000000387     95                   PUSH_LOCAL ^ 16
000000388     95                         PUSH int 0
000000389     95                       BINARY == ^ 8
000000390     95                      GOTO_IF 392

000000391     97                         GOTO 394

000000392     96                         PUSH ^ 0x557ddb9fd130
000000393     96                 CALL_BUILTIN void error
000000394     98                    PUSH_ZERO 2
000000395     98                   PUSH_LOCAL ^ 16
000000396     98               CHANGE_REF_CNT ++ File
000000397     98                         CALL <unknown> (385)
000000398     98                     PUSH_REG 0
000000399     98                      POP_REG 0
000000400     99                         GOTO 401

000000401     99                   PUSH_LOCAL interface 24
000000402     99               CHANGE_REF_CNT -- interface; POP
000000403     99                   PUSH_LOCAL ^ 16
000000404     99               CHANGE_REF_CNT -- File; POP
000000405     99                  LEAVE_FRAME
000000406     99                       RETURN 3

000000407    244                         GOTO 1007


Function: remove

000000408    102                  ENTER_FRAME 0
000000409    102                    PUSH_ZERO 2
000000410    102                   PUSH_LOCAL str 16
000000411    102               CHANGE_REF_CNT ++ str
000000412    102                         CALL <unknown> (407)
000000413    102                     PUSH_REG 0
000000414    102                      POP_REG 0
000000415    102                         GOTO 416

000000416    102                   PUSH_LOCAL interface 24
000000417    102               CHANGE_REF_CNT -- interface; POP
000000418    102                   PUSH_LOCAL str 16
000000419    102               CHANGE_REF_CNT -- str; POP
000000420    102                  LEAVE_FRAME
000000421    102                       RETURN 3

000000422    244                         GOTO 1015


Function: feof

000000423    110                  ENTER_FRAME 0
000000424    106                   PUSH_LOCAL ^ 16
000000425    106                         PUSH int 0
000000426    106                       BINARY == ^ 8
000000427    106                      GOTO_IF 429

000000428    108                         GOTO 431

000000429    107                         PUSH ^ 0x557ddba02140
000000430    107                 CALL_BUILTIN void error
000000431    109                    PUSH_ZERO 2
000000432    109                   PUSH_LOCAL ^ 16
000000433    109               CHANGE_REF_CNT ++ File
000000434    109                         CALL <unknown> (422)
000000435    109                     PUSH_REG 0
000000436    109                 ASSERT_RANGE bool
000000437    109                      POP_REG 0
000000438    110                         GOTO 439

000000439    110                   PUSH_LOCAL interface 24
000000440    110               CHANGE_REF_CNT -- interface; POP
000000441    110                   PUSH_LOCAL ^ 16
000000442    110               CHANGE_REF_CNT -- File; POP
000000443    110                  LEAVE_FRAME
000000444    110                       RETURN 3


Function: println

000000445    114                  ENTER_FRAME 0
000000446    114                         PUSH int 0
000000447    114                         PUSH ^ (nil)
000000448    114                         PUSH ^ 0x557ddba03db0
000000449    114                   PUSH_LOCAL str 16
000000450    114                         PUSH ^ 0x557ddb9a9010
000000451    114                 CALL_BUILTIN str printf
000000452    114                          POP 2
000000453    114                         PUSH int 0
000000454    114                         PUSH ^ 0x557ddb99e100
000000455    114                 CALL_BUILTIN void printf
000000456    114                          POP 4
000000457    114                      POP_REG 0
000000458    114                         GOTO 459

000000459    114                   PUSH_LOCAL interface 24
000000460    114               CHANGE_REF_CNT -- interface; POP
000000461    114                   PUSH_LOCAL str 16
000000462    114               CHANGE_REF_CNT -- str; POP
000000463    114                  LEAVE_FRAME
000000464    114                       RETURN 3


Function: fprintln

000000465    115                  ENTER_FRAME 0
000000466    115                         PUSH int 0
000000467    115                   PUSH_LOCAL ^ 24
000000468    115                         PUSH ^ 0x557ddba064b0
000000469    115                   PUSH_LOCAL str 16
000000470    115                         PUSH ^ 0x557ddb9a9010
000000471    115                 CALL_BUILTIN str fprintf
000000472    115                          POP 2
000000473    115                         PUSH int 0
000000474    115                         PUSH ^ 0x557ddb99e100
000000475    115                 CALL_BUILTIN void fprintf
000000476    115                          POP 4
000000477    115                      POP_REG 0
000000478    115                         GOTO 479

000000479    115                   PUSH_LOCAL interface 32
000000480    115               CHANGE_REF_CNT -- interface; POP
000000481    115                   PUSH_LOCAL ^ 24
000000482    115               CHANGE_REF_CNT -- File; POP
000000483    115                   PUSH_LOCAL str 16
000000484    115               CHANGE_REF_CNT -- str; POP
000000485    115                  LEAVE_FRAME
000000486    115                       RETURN 4


Function: getchar

000000487    121                  ENTER_FRAME 1
000000488    118               PUSH_LOCAL_PTR -9
000000489    118                         ZERO 1
000000490    119                         PUSH int 0
000000491    119                         PUSH ^ (nil)
000000492    119                         PUSH ^ 0x557ddba07ea0
000000493    119               PUSH_LOCAL_PTR -9
000000494    119                 CALL_BUILTIN char scanf
000000495    119                          POP 1
000000496    119                         PUSH int 0
000000497    119                 CALL_BUILTIN void scanf
000000498    119                          POP 4
000000499    120                   PUSH_LOCAL char -9
000000500    120                      POP_REG 0
000000501    121                         GOTO 502

000000502    121                   PUSH_LOCAL interface 16
000000503    121               CHANGE_REF_CNT -- interface; POP
000000504    121                  LEAVE_FRAME
000000505    121                       RETURN 2


Function: ltrim

000000506    136                  ENTER_FRAME 4
000000507    126                         PUSH int -1
000000508    126               PUSH_LOCAL_PTR -16
000000509    126                 SWAP; ASSIGN int 8
000000510    127                   PUSH_LOCAL str 16
000000511    127                 CALL_BUILTIN str len
000000512    127               PUSH_LOCAL_PTR -24
000000513    127                 SWAP; ASSIGN int 8
000000514    128                         PUSH int 0
000000515    128               PUSH_LOCAL_PTR -32
000000516    128                 SWAP; ASSIGN int 8
000000517    128                   PUSH_LOCAL int -32
000000518    128                   PUSH_LOCAL int -24
000000519    128                       BINARY < int 8
000000520    128                      GOTO_IF 525

000000521    133                         GOTO 537

000000522    128               PUSH_LOCAL_PTR -32
000000523    128                        UNARY ++ int
000000524    128                         GOTO 517

000000525    129                   PUSH_LOCAL str 16
000000526    129                   PUSH_LOCAL int -32
000000527    129                GET_ARRAY_PTR char 1 -1; DEREF
000000528    129                         PUSH int 32
000000529    129                       BINARY > char 1
000000530    129                      GOTO_IF 532

000000531    132                         GOTO 536

000000532    130               PUSH_LOCAL_PTR -16
000000533    130                   PUSH_LOCAL int -32
000000534    130                       ASSIGN int 8
000000535    133                         GOTO 537

000000536    133                         GOTO 522

000000537    134                   PUSH_LOCAL int -16
000000538    134                         PUSH int -1
000000539    134                       BINARY == int 8
000000540    134                      GOTO_IF 542

000000541    134                         GOTO 546

000000542    134                         PUSH ^ 0x557ddba0f0d0
000000543    134               CHANGE_REF_CNT ++ str
000000544    134                      POP_REG 0
000000545    136                         GOTO 554

000000546    135                   PUSH_LOCAL str 16
000000547    135                   PUSH_LOCAL int -16
000000548    135                         PUSH int -2147483648
000000549    135                         PUSH ^ 0x557ddb9a9010
000000550    135                         PUSH ^ (nil)
000000551    135                 CALL_BUILTIN [] slice
000000552    135                      POP_REG 0
000000553    136                         GOTO 554

000000554    136                   PUSH_LOCAL interface 24
000000555    136               CHANGE_REF_CNT -- interface; POP
000000556    136                   PUSH_LOCAL str 16
000000557    136               CHANGE_REF_CNT -- str; POP
000000558    136                  LEAVE_FRAME
000000559    136                       RETURN 3


Function: rtrim

000000560    149                  ENTER_FRAME 4
000000561    139                         PUSH int -1
000000562    139               PUSH_LOCAL_PTR -16
000000563    139                 SWAP; ASSIGN int 8
000000564    140                   PUSH_LOCAL str 16
000000565    140                 CALL_BUILTIN str len
000000566    140               PUSH_LOCAL_PTR -24
000000567    140                 SWAP; ASSIGN int 8
000000568    141                   PUSH_LOCAL int -24
000000569    141                         PUSH int 1
000000570    141                       BINARY - int 8
000000571    141               PUSH_LOCAL_PTR -32
000000572    141                 SWAP; ASSIGN int 8
000000573    141                   PUSH_LOCAL int -32
000000574    141                         PUSH int 0
000000575    141                       BINARY >= int 8
000000576    141                      GOTO_IF 581

000000577    146                         GOTO 593

000000578    141               PUSH_LOCAL_PTR -32
000000579    141                        UNARY -- int
000000580    141                         GOTO 573

000000581    142                   PUSH_LOCAL str 16
000000582    142                   PUSH_LOCAL int -32
000000583    142                GET_ARRAY_PTR char 1 -1; DEREF
000000584    142                         PUSH int 32
000000585    142                       BINARY > char 1
000000586    142                      GOTO_IF 588

000000587    145                         GOTO 592

000000588    143               PUSH_LOCAL_PTR -16
000000589    143                   PUSH_LOCAL int -32
000000590    143                       ASSIGN int 8
000000591    146                         GOTO 593

000000592    146                         GOTO 578

000000593    147                   PUSH_LOCAL int -16
000000594    147                         PUSH int -1
000000595    147                       BINARY == int 8
000000596    147                      GOTO_IF 598

000000597    147                         GOTO 602

000000598    147                         PUSH ^ 0x557ddba15f10
000000599    147               CHANGE_REF_CNT ++ str
000000600    147                      POP_REG 0
000000601    149                         GOTO 612

000000602    148                   PUSH_LOCAL str 16
000000603    148                         PUSH int 0
000000604    148                   PUSH_LOCAL int -16
000000605    148                         PUSH int 1
000000606    148                       BINARY + int 8
000000607    148                         PUSH ^ 0x557ddb9a9010
000000608    148                         PUSH ^ (nil)
000000609    148                 CALL_BUILTIN [] slice
000000610    148                      POP_REG 0
000000611    149                         GOTO 612

000000612    149                   PUSH_LOCAL interface 24
000000613    149               CHANGE_REF_CNT -- interface; POP
000000614    149                   PUSH_LOCAL str 16
000000615    149               CHANGE_REF_CNT -- str; POP
000000616    149                  LEAVE_FRAME
000000617    149                       RETURN 3


Function: trim

000000618    153                  ENTER_FRAME 2
000000619    152                    PUSH_ZERO 4
000000620    152                   PUSH_LOCAL str 16
000000621    152               CHANGE_REF_CNT ++ str
000000622    152                         CALL rtrim (560)
000000623    152                     PUSH_REG 0
000000624    152                         CALL ltrim (506)
000000625    152                     PUSH_REG 0
000000626    152                      POP_REG 0
000000627    153                         GOTO 628

000000628    153                   PUSH_LOCAL interface 24
000000629    153               CHANGE_REF_CNT -- interface; POP
000000630    153                   PUSH_LOCAL str 16
000000631    153               CHANGE_REF_CNT -- str; POP
000000632    153                  LEAVE_FRAME
000000633    153                       RETURN 3


Function: atoi

000000634    161                  ENTER_FRAME 1
000000635    158               PUSH_LOCAL_PTR -16
000000636    158                         ZERO 8
000000637    159                         PUSH int 0
000000638    159                   PUSH_LOCAL str 16
000000639    159                         PUSH ^ 0x557ddba19e70
000000640    159               PUSH_LOCAL_PTR -16
000000641    159                 CALL_BUILTIN int sscanf
000000642    159                          POP 1
000000643    159                         PUSH int 0
000000644    159                 CALL_BUILTIN void sscanf
000000645    159                          POP 4
000000646    160                   PUSH_LOCAL int -16
000000647    160                      POP_REG 0
000000648    161                         GOTO 649

000000649    161                   PUSH_LOCAL interface 24
000000650    161               CHANGE_REF_CNT -- interface; POP
000000651    161                   PUSH_LOCAL str 16
000000652    161               CHANGE_REF_CNT -- str; POP
000000653    161                  LEAVE_FRAME
000000654    161                       RETURN 3


Function: atof

000000655    167                  ENTER_FRAME 1
000000656    164               PUSH_LOCAL_PTR -16
000000657    164                         ZERO 8
000000658    165                         PUSH int 0
000000659    165                   PUSH_LOCAL str 16
000000660    165                         PUSH ^ 0x557ddba1c9e0
000000661    165               PUSH_LOCAL_PTR -16
000000662    165                 CALL_BUILTIN real sscanf
000000663    165                          POP 1
000000664    165                         PUSH int 0
000000665    165                 CALL_BUILTIN void sscanf
000000666    165                          POP 4
000000667    166                   PUSH_LOCAL real -16
000000668    166                      POP_REG 0
000000669    167                         GOTO 670

000000670    167                   PUSH_LOCAL interface 24
000000671    167               CHANGE_REF_CNT -- interface; POP
000000672    167                   PUSH_LOCAL str 16
000000673    167               CHANGE_REF_CNT -- str; POP
000000674    167                  LEAVE_FRAME
000000675    167                       RETURN 3


Function: itoa

000000676    172                  ENTER_FRAME 2
000000677    170                         PUSH int 0
000000678    170                         PUSH ^ (nil)
000000679    170                         PUSH ^ 0x557ddba1ed20
000000680    170                   PUSH_LOCAL int 16
000000681    170                         PUSH ^ 0x557ddb9a4660
000000682    170                 CALL_BUILTIN int sprintf
000000683    170                          POP 2
000000684    170                         PUSH int 0
000000685    170                         PUSH ^ 0x557ddb99e100
000000686    170                 CALL_BUILTIN void sprintf
000000687    170                          POP 3
000000688    170                         SWAP
000000689    170                          POP 1
000000690    170               PUSH_LOCAL_PTR -24
000000691    170                 SWAP; ASSIGN str 8
000000692    171                   PUSH_LOCAL str -24
000000693    171               CHANGE_REF_CNT ++ str
000000694    171                      POP_REG 0
000000695    172                         GOTO 696

000000696    172                   PUSH_LOCAL interface 24
000000697    172               CHANGE_REF_CNT -- interface; POP
000000698    172                   PUSH_LOCAL str -24
000000699    172               CHANGE_REF_CNT -- str; POP
000000700    172                  LEAVE_FRAME
000000701    172                       RETURN 3


Function: ftoa

000000702    178                  ENTER_FRAME 4
000000703    175                         PUSH int 0
000000704    175                         PUSH ^ (nil)
000000705    175                         PUSH ^ 0x557ddba21420
000000706    175                   PUSH_LOCAL int 16
000000707    175                         PUSH ^ 0x557ddb9a4660
000000708    175                 CALL_BUILTIN int sprintf
000000709    175                          POP 2
000000710    175                         PUSH int 0
000000711    175                         PUSH ^ 0x557ddb99e100
000000712    175                 CALL_BUILTIN void sprintf
000000713    175                          POP 3
000000714    175                         SWAP
000000715    175                          POP 1
000000716    175               PUSH_LOCAL_PTR -24
000000717    175                 SWAP; ASSIGN str 8
000000718    176                         PUSH int 0
000000719    176                         PUSH ^ (nil)
000000720    176                   PUSH_LOCAL str -24
000000721    176                   PUSH_LOCAL real 24
000000722    176                         PUSH ^ 0x557ddb9a87e0
000000723    176                 CALL_BUILTIN real sprintf
000000724    176                          POP 2
000000725    176                         PUSH int 0
000000726    176                         PUSH ^ 0x557ddb99e100
000000727    176                 CALL_BUILTIN void sprintf
000000728    176                          POP 3
000000729    176                         SWAP
000000730    176                          POP 1
000000731    176               PUSH_LOCAL_PTR -40
000000732    176                 SWAP; ASSIGN str 8
000000733    177                   PUSH_LOCAL str -40
000000734    177               CHANGE_REF_CNT ++ str
000000735    177                      POP_REG 0
000000736    178                         GOTO 737

000000737    178                   PUSH_LOCAL interface 32
000000738    178               CHANGE_REF_CNT -- interface; POP
000000739    178                   PUSH_LOCAL str -24
000000740    178               CHANGE_REF_CNT -- str; POP
000000741    178                   PUSH_LOCAL str -40
000000742    178               CHANGE_REF_CNT -- str; POP
000000743    178                  LEAVE_FRAME
000000744    178                       RETURN 4


Function: srand

000000745    194                  ENTER_FRAME 0
000000746    194                         PUSH ^ 0x557ddba24270
000000747    194                   PUSH_LOCAL int 16
000000748    194                       ASSIGN int 8
000000749    194                   PUSH_LOCAL interface 24
000000750    194               CHANGE_REF_CNT -- interface; POP
000000751    194                  LEAVE_FRAME
000000752    194                       RETURN 3


Function: rand

000000753    199                  ENTER_FRAME 0
000000754    197                         PUSH ^ 0x557ddba24270
000000755    197                         PUSH int 1664525
000000756    197                         PUSH int 0x557ddba24270; DEREF
000000757    197                       BINARY * int 8
000000758    197                         PUSH int 1013904223
000000759    197                       BINARY + int 8
000000760    197                         PUSH int 4294967295
000000761    197                       BINARY & int 8
000000762    197                       ASSIGN int 8
000000763    198                         PUSH int 0x557ddba24270; DEREF
000000764    198                         PUSH int 8
000000765    198                       BINARY >> int 8
000000766    198                      POP_REG 0
000000767    199                         GOTO 768

000000768    199                   PUSH_LOCAL interface 16
000000769    199               CHANGE_REF_CNT -- interface; POP
000000770    199                  LEAVE_FRAME
000000771    199                       RETURN 2


Function: frand

000000772    201                  ENTER_FRAME 0
000000773    201                    PUSH_ZERO 2
000000774    201                         CALL rand (753)
000000775    201                     PUSH_REG 0
000000776    201                 CALL_BUILTIN int real
000000777    201                         PUSH real 1.67772e+07
000000778    201                       BINARY / real 8
000000779    201                      POP_REG 0
000000780    201                         GOTO 781

000000781    201                   PUSH_LOCAL interface 16
000000782    201               CHANGE_REF_CNT -- interface; POP
000000783    201                  LEAVE_FRAME
000000784    201                       RETURN 2

000000785    244                         GOTO 1023


Function: time

000000786    213                  ENTER_FRAME 0
000000787    213                    PUSH_ZERO 2
000000788    213                         CALL <unknown> (785)
000000789    213                     PUSH_REG 0
000000790    213                      POP_REG 0
000000791    213                         GOTO 792

000000792    213                   PUSH_LOCAL interface 16
000000793    213               CHANGE_REF_CNT -- interface; POP
000000794    213                  LEAVE_FRAME
000000795    213                       RETURN 2

000000796    244                         GOTO 1029


Function: clock

000000797    216                  ENTER_FRAME 0
000000798    216                    PUSH_ZERO 2
000000799    216                         CALL <unknown> (796)
000000800    216                     PUSH_REG 0
000000801    216                      POP_REG 0
000000802    216                         GOTO 803

000000803    216                   PUSH_LOCAL interface 16
000000804    216               CHANGE_REF_CNT -- interface; POP
000000805    216                  LEAVE_FRAME
000000806    216                       RETURN 2

000000807    244                         GOTO 1035


Function: localtime

000000808    219                  ENTER_FRAME 9
000000809    219                    PUSH_ZERO 2
000000810    219                   PUSH_LOCAL int 24
000000811    219               PUSH_LOCAL_PTR -80
000000812    219                         CALL <unknown> (807)
000000813    219                     PUSH_REG 0
000000814    219                   PUSH_LOCAL ^ 16
000000815    219                 SWAP; ASSIGN struct 72
000000816    219                   PUSH_LOCAL ^ 16
000000817    219                      POP_REG 0
000000818    219                         GOTO 819

000000819    219                   PUSH_LOCAL interface 32
000000820    219               CHANGE_REF_CNT -- interface; POP
000000821    219                  LEAVE_FRAME
000000822    219                       RETURN 4

000000823    244                         GOTO 1041


Function: gmtime

000000824    222                  ENTER_FRAME 9
000000825    222                    PUSH_ZERO 2
000000826    222                   PUSH_LOCAL int 24
000000827    222               PUSH_LOCAL_PTR -80
000000828    222                         CALL <unknown> (823)
000000829    222                     PUSH_REG 0
000000830    222                   PUSH_LOCAL ^ 16
000000831    222                 SWAP; ASSIGN struct 72
000000832    222                   PUSH_LOCAL ^ 16
000000833    222                      POP_REG 0
000000834    222                         GOTO 835

000000835    222                   PUSH_LOCAL interface 32
000000836    222               CHANGE_REF_CNT -- interface; POP
000000837    222                  LEAVE_FRAME
000000838    222                       RETURN 4

000000839    244                         GOTO 1047


Function: mktime

000000840    225                  ENTER_FRAME 0
000000841    225                    PUSH_ZERO 2
000000842    225               PUSH_LOCAL_PTR 16
000000843    225               CHANGE_REF_CNT ++ ^DateTime
000000844    225                         CALL <unknown> (839)
000000845    225                     PUSH_REG 0
000000846    225                      POP_REG 0
000000847    225                         GOTO 848

000000848    225                   PUSH_LOCAL interface 88
000000849    225               CHANGE_REF_CNT -- interface; POP
000000850    225                  LEAVE_FRAME
000000851    225                       RETURN 11


Function: timestr

000000852    231                  ENTER_FRAME 1
000000853    228                         PUSH int 0
000000854    228                         PUSH ^ (nil)
000000855    228                         PUSH ^ 0x557ddba37560
000000856    229                   PUSH_LOCAL int 56
000000857    229                         PUSH ^ 0x557ddb9a4660
000000858    229                 CALL_BUILTIN int sprintf
000000859    229                          POP 2
000000860    229                   PUSH_LOCAL int 48
000000861    229                         PUSH ^ 0x557ddb9a4660
000000862    229                 CALL_BUILTIN int sprintf
000000863    229                          POP 2
000000864    229                   PUSH_LOCAL int 40
000000865    229                         PUSH ^ 0x557ddb9a4660
000000866    229                 CALL_BUILTIN int sprintf
000000867    229                          POP 2
000000868    230                   PUSH_LOCAL int 32
000000869    230                         PUSH ^ 0x557ddb9a4660
000000870    230                 CALL_BUILTIN int sprintf
000000871    230                          POP 2
000000872    230                   PUSH_LOCAL int 24
000000873    230                         PUSH ^ 0x557ddb9a4660
000000874    230                 CALL_BUILTIN int sprintf
000000875    230                          POP 2
000000876    230                   PUSH_LOCAL int 16
000000877    230                         PUSH ^ 0x557ddb9a4660
000000878    230                 CALL_BUILTIN int sprintf
000000879    230                          POP 2
000000880    230                         PUSH int 0
000000881    230                         PUSH ^ 0x557ddb99e100
000000882    230                 CALL_BUILTIN void sprintf
000000883    230                          POP 3
000000884    230                         SWAP
000000885    230                          POP 1
000000886    230                      POP_REG 0
000000887    231                         GOTO 888

000000888    231                   PUSH_LOCAL interface 88
000000889    231               CHANGE_REF_CNT -- interface; POP
000000890    231                  LEAVE_FRAME
000000891    231                       RETURN 11


Function: argc

000000892    235                  ENTER_FRAME 0
000000893    235                         PUSH ^ 0x557ddb99e0e0
000000894    235                          POP 1
000000895    235                         PUSH int 1
000000896    235                      POP_REG 0
000000897    235                         GOTO 898

000000898    235                   PUSH_LOCAL interface 16
000000899    235               CHANGE_REF_CNT -- interface; POP
000000900    235                  LEAVE_FRAME
000000901    235                       RETURN 2


Function: argv

000000902    237                  ENTER_FRAME 0
000000903    237                         PUSH ^ 0x557ddb99e0e0
000000904    237                   PUSH_LOCAL int 16
000000905    237                GET_ARRAY_PTR str 8 1; DEREF
000000906    237               CHANGE_REF_CNT ++ str
000000907    237                      POP_REG 0
000000908    237                         GOTO 909

000000909    237                   PUSH_LOCAL interface 24
000000910    237               CHANGE_REF_CNT -- interface; POP
000000911    237                  LEAVE_FRAME
000000912    237                       RETURN 3

000000913    244                         GOTO 1055


Function: getenv

000000914    240                  ENTER_FRAME 1
000000915    240                    PUSH_ZERO 2
000000916    240                   PUSH_LOCAL str 16
000000917    240               CHANGE_REF_CNT ++ str
000000918    240                         CALL <unknown> (913)
000000919    240                     PUSH_REG 0
000000920    240                      POP_REG 0
000000921    240                         GOTO 922

000000922    240                   PUSH_LOCAL interface 24
000000923    240               CHANGE_REF_CNT -- interface; POP
000000924    240                   PUSH_LOCAL str 16
000000925    240               CHANGE_REF_CNT -- str; POP
000000926    240                  LEAVE_FRAME
000000927    240                       RETURN 3

000000928    244                         GOTO 1063


Function: system

000000929    243                  ENTER_FRAME 0
000000930    243                    PUSH_ZERO 2
000000931    243                   PUSH_LOCAL str 16
000000932    243               CHANGE_REF_CNT ++ str
000000933    243                         CALL <unknown> (928)
000000934    243                     PUSH_REG 0
000000935    243                      POP_REG 0
000000936    243                         GOTO 937

000000937    243                   PUSH_LOCAL interface 24
000000938    243               CHANGE_REF_CNT -- interface; POP
000000939    243                   PUSH_LOCAL str 16
000000940    243               CHANGE_REF_CNT -- str; POP
000000941    243                  LEAVE_FRAME
000000942    243                       RETURN 3


Function: <unknown>

000000943    244                  ENTER_FRAME 0
000000944    244                  CALL_EXTERN 0x7f8e6ba55870
000000945    244                   PUSH_LOCAL interface 40
000000946    244               CHANGE_REF_CNT -- interface; POP
000000947    244                   PUSH_LOCAL ^ 32
000000948    244               CHANGE_REF_CNT -- ^void; POP
000000949    244                   PUSH_LOCAL ^ 24
000000950    244               CHANGE_REF_CNT -- ^void; POP
000000951    244                  LEAVE_FRAME
000000952    244                       RETURN 5


Function: <unknown>

000000953    244                  ENTER_FRAME 0
000000954    244                  CALL_EXTERN 0x7f8e6ba55890
000000955    244                   PUSH_LOCAL interface 32
000000956    244               CHANGE_REF_CNT -- interface; POP
000000957    244                   PUSH_LOCAL str 24
000000958    244               CHANGE_REF_CNT -- str; POP
000000959    244                   PUSH_LOCAL str 16
000000960    244               CHANGE_REF_CNT -- str; POP
000000961    244                  LEAVE_FRAME
000000962    244                       RETURN 4


Function: <unknown>

000000963    244                  ENTER_FRAME 0
000000964    244                  CALL_EXTERN 0x7f8e6ba558c0
000000965    244                   PUSH_LOCAL interface 24
000000966    244               CHANGE_REF_CNT -- interface; POP
000000967    244                   PUSH_LOCAL ^ 16
000000968    244               CHANGE_REF_CNT -- File; POP
000000969    244                  LEAVE_FRAME
000000970    244                       RETURN 3


Function: <unknown>

000000971    244                  ENTER_FRAME 0
000000972    244                  CALL_EXTERN 0x7f8e6ba558f0
000000973    244                   PUSH_LOCAL interface 48
000000974    244               CHANGE_REF_CNT -- interface; POP
000000975    244                   PUSH_LOCAL ^ 40
000000976    244               CHANGE_REF_CNT -- ^void; POP
000000977    244                   PUSH_LOCAL ^ 16
000000978    244               CHANGE_REF_CNT -- File; POP
000000979    244                  LEAVE_FRAME
000000980    244                       RETURN 6


Function: <unknown>

000000981    244                  ENTER_FRAME 0
000000982    244                  CALL_EXTERN 0x7f8e6ba55930
000000983    244                   PUSH_LOCAL interface 48
000000984    244               CHANGE_REF_CNT -- interface; POP
000000985    244                   PUSH_LOCAL ^ 40
000000986    244               CHANGE_REF_CNT -- ^void; POP
000000987    244                   PUSH_LOCAL ^ 16
000000988    244               CHANGE_REF_CNT -- File; POP
000000989    244                  LEAVE_FRAME
000000990    244                       RETURN 6


Function: <unknown>

000000991    244                  ENTER_FRAME 0
000000992    244                  CALL_EXTERN 0x7f8e6ba55970
000000993    244                   PUSH_LOCAL interface 40
000000994    244               CHANGE_REF_CNT -- interface; POP
000000995    244                   PUSH_LOCAL ^ 32
000000996    244               CHANGE_REF_CNT -- File; POP
000000997    244                  LEAVE_FRAME
000000998    244                       RETURN 5


Function: <unknown>

000000999    244                  ENTER_FRAME 0
000001000    244                  CALL_EXTERN 0x7f8e6ba559c0
000001001    244                   PUSH_LOCAL interface 24
000001002    244               CHANGE_REF_CNT -- interface; POP
000001003    244                   PUSH_LOCAL ^ 16
000001004    244               CHANGE_REF_CNT -- File; POP
000001005    244                  LEAVE_FRAME
000001006    244                       RETURN 3


Function: <unknown>

000001007    244                  ENTER_FRAME 0
000001008    244                  CALL_EXTERN 0x7f8e6ba559f0
000001009    244                   PUSH_LOCAL interface 24
000001010    244               CHANGE_REF_CNT -- interface; POP
000001011    244                   PUSH_LOCAL str 16
000001012    244               CHANGE_REF_CNT -- str; POP
000001013    244                  LEAVE_FRAME
000001014    244                       RETURN 3


Function: <unknown>

000001015    244                  ENTER_FRAME 0
000001016    244                  CALL_EXTERN 0x7f8e6ba55a20
000001017    244                   PUSH_LOCAL interface 24
000001018    244               CHANGE_REF_CNT -- interface; POP
000001019    244                   PUSH_LOCAL ^ 16
000001020    244               CHANGE_REF_CNT -- File; POP
000001021    244                  LEAVE_FRAME
000001022    244                       RETURN 3


Function: <unknown>

000001023    244                  ENTER_FRAME 0
000001024    244                  CALL_EXTERN 0x7f8e6ba55a50
000001025    244                   PUSH_LOCAL interface 16
000001026    244               CHANGE_REF_CNT -- interface; POP
000001027    244                  LEAVE_FRAME
000001028    244                       RETURN 2


Function: <unknown>

000001029    244                  ENTER_FRAME 0
000001030    244                  CALL_EXTERN 0x7f8e6ba55a70
000001031    244                   PUSH_LOCAL interface 16
000001032    244               CHANGE_REF_CNT -- interface; POP
000001033    244                  LEAVE_FRAME
000001034    244                       RETURN 2


Function: <unknown>

000001035    244                  ENTER_FRAME 0
000001036    244                  CALL_EXTERN 0x7f8e6ba55ae0
000001037    244                   PUSH_LOCAL interface 32
000001038    244               CHANGE_REF_CNT -- interface; POP
000001039    244                  LEAVE_FRAME
000001040    244                       RETURN 4


Function: <unknown>

000001041    244                  ENTER_FRAME 0
000001042    244                  CALL_EXTERN 0x7f8e6ba55b90
000001043    244                   PUSH_LOCAL interface 32
000001044    244               CHANGE_REF_CNT -- interface; POP
000001045    244                  LEAVE_FRAME
000001046    244                       RETURN 4


Function: <unknown>

000001047    244                  ENTER_FRAME 0
000001048    244                  CALL_EXTERN 0x7f8e6ba55c40
000001049    244                   PUSH_LOCAL interface 24
000001050    244               CHANGE_REF_CNT -- interface; POP
000001051    244                   PUSH_LOCAL ^ 16
000001052    244               CHANGE_REF_CNT -- ^DateTime; POP
000001053    244                  LEAVE_FRAME
000001054    244                       RETURN 3


Function: <unknown>

000001055    244                  ENTER_FRAME 0
000001056    244                  CALL_EXTERN 0x7f8e6ba55ce0
000001057    244                   PUSH_LOCAL interface 24
000001058    244               CHANGE_REF_CNT -- interface; POP
000001059    244                   PUSH_LOCAL str 16
000001060    244               CHANGE_REF_CNT -- str; POP
000001061    244                  LEAVE_FRAME
000001062    244                       RETURN 3


Function: <unknown>

000001063    244                  ENTER_FRAME 0
000001064    244                  CALL_EXTERN 0x7f8e6ba55d20
000001065    244                   PUSH_LOCAL interface 24
000001066    244               CHANGE_REF_CNT -- interface; POP
000001067    244                   PUSH_LOCAL str 16
000001068    244               CHANGE_REF_CNT -- str; POP
000001069    244                  LEAVE_FRAME
000001070    244                       RETURN 3


Module: /home/marek/dev/umlibs/tar/pak/os/pak/filepath/pak/strings/strings.um


Function: contains

000001071     15                  ENTER_FRAME 2
000001072      6                         PUSH int 0
000001073      6               PUSH_LOCAL_PTR -16
000001074      6                 SWAP; ASSIGN int 8
000001075      6                   PUSH_LOCAL int -16
000001076      6                   PUSH_LOCAL str 24
000001077      6                 CALL_BUILTIN str len
000001078      6                       BINARY < int 8
000001079      6                      GOTO_IF 1084

000001080     12                         GOTO 1136

000001081      6               PUSH_LOCAL_PTR -16
000001082      6                        UNARY ++ int
000001083      6                         GOTO 1075

000001084      7                         PUSH int 0
000001085      7               PUSH_LOCAL_PTR -24
000001086      7                 SWAP; ASSIGN int 8
000001087      7                   PUSH_LOCAL int -16
000001088      7                   PUSH_LOCAL int -24
000001089      7                       BINARY + int 8
000001090      7                   PUSH_LOCAL str 24
000001091      7                 CALL_BUILTIN str len
000001092      7                       BINARY < int 8
000001093      7                          DUP
000001094      7                      POP_REG 2
000001095      7                      GOTO_IF 1097

000001096      7                         GOTO 1107

000001097      7                   PUSH_LOCAL str 24
000001098      7                   PUSH_LOCAL int -16
000001099      7                   PUSH_LOCAL int -24
000001100      7                       BINARY + int 8
000001101      7                GET_ARRAY_PTR char 1 -1; DEREF
000001102      7                   PUSH_LOCAL str 16
000001103      7                   PUSH_LOCAL int -24
000001104      7                GET_ARRAY_PTR char 1 -1; DEREF
000001105      7                       BINARY == char 1
000001106      7                      POP_REG 2
000001107      7                     PUSH_REG 2
000001108      7                          DUP
000001109      7                      POP_REG 2
000001110      7                      GOTO_IF 1112

000001111      7                         GOTO 1117

000001112      7                   PUSH_LOCAL int -24
000001113      7                   PUSH_LOCAL str 16
000001114      7                 CALL_BUILTIN str len
000001115      7                       BINARY < int 8
000001116      7                      POP_REG 2
000001117      7                     PUSH_REG 2
000001118      7                      GOTO_IF 1123

000001119     11                         GOTO 1135

000001120      7               PUSH_LOCAL_PTR -24
000001121      7                        UNARY ++ int
000001122      7                         GOTO 1087

000001123      8                   PUSH_LOCAL int -24
000001124      8                   PUSH_LOCAL str 16
000001125      8                 CALL_BUILTIN str len
000001126      8                         PUSH int 1
000001127      8                       BINARY - int 8
000001128      8                       BINARY == int 8
000001129      8                      GOTO_IF 1131

000001130     10                         GOTO 1134

000001131      9                         PUSH int 1
000001132      9                      POP_REG 0
000001133     15                         GOTO 1139

000001134     11                         GOTO 1120

000001135     12                         GOTO 1081

000001136     14                         PUSH int 0
000001137     14                      POP_REG 0
000001138     15                         GOTO 1139

000001139     15                   PUSH_LOCAL interface 32
000001140     15               CHANGE_REF_CNT -- interface; POP
000001141     15                   PUSH_LOCAL str 24
000001142     15               CHANGE_REF_CNT -- str; POP
000001143     15                   PUSH_LOCAL str 16
000001144     15               CHANGE_REF_CNT -- str; POP
000001145     15                  LEAVE_FRAME
000001146     15                       RETURN 4


Function: join

000001147     31                  ENTER_FRAME 4
000001148     21                         PUSH ^ 0x557ddb9c2010
000001149     21               CHANGE_REF_CNT ++ str
000001150     21               PUSH_LOCAL_PTR -16
000001151     21                 SWAP; ASSIGN str 8
000001152     23                         PUSH int 0
000001153     23               PUSH_LOCAL_PTR -24
000001154     23                 SWAP; ASSIGN int 8
000001155     23                   PUSH_LOCAL int -24
000001156     23               PUSH_LOCAL_PTR 24
000001157     23                 CALL_BUILTIN [] len
000001158     23                       BINARY < int 8
000001159     23                      GOTO_IF 1164

000001160     28                         GOTO 1197

000001161     23               PUSH_LOCAL_PTR -24
000001162     23                        UNARY ++ int
000001163     23                         GOTO 1155

000001164     24               PUSH_LOCAL_PTR -16
000001165     24                          DUP
000001166     24                        DEREF str
000001167     24               PUSH_LOCAL_PTR 24
000001168     24                   PUSH_LOCAL int -24
000001169     24             GET_DYNARRAY_PTR str; DEREF
000001170     24                       BINARY += str 0
000001171     24                          DUP
000001172     24               PUSH_LOCAL_PTR -32
000001173     24                 SWAP; ASSIGN str 8
000001174     24        CHANGE_REF_CNT_ASSIGN str
000001175     25                   PUSH_LOCAL int -24
000001176     25               PUSH_LOCAL_PTR 24
000001177     25                 CALL_BUILTIN [] len
000001178     25                         PUSH int 1
000001179     25                       BINARY - int 8
000001180     25                       BINARY != int 8
000001181     25                      GOTO_IF 1183

000001182     27                         GOTO 1194

000001183     26               PUSH_LOCAL_PTR -16
000001184     26                          DUP
000001185     26                        DEREF str
000001186     26                   PUSH_LOCAL str 16
000001187     26                       BINARY += str 0
000001188     26                          DUP
000001189     26               PUSH_LOCAL_PTR -40
000001190     26                 SWAP; ASSIGN str 8
000001191     26        CHANGE_REF_CNT_ASSIGN str
000001192     27                   PUSH_LOCAL str -40
000001193     27               CHANGE_REF_CNT -- str; POP
000001194     28                   PUSH_LOCAL str -32
000001195     28               CHANGE_REF_CNT -- str; POP
000001196     28                         GOTO 1161

000001197     30                   PUSH_LOCAL str -16
000001198     30               CHANGE_REF_CNT ++ str
000001199     30                      POP_REG 0
000001200     31                         GOTO 1201

000001201     31                   PUSH_LOCAL interface 48
000001202     31               CHANGE_REF_CNT -- interface; POP
000001203     31                   PUSH_LOCAL [] 24
000001204     31               CHANGE_REF_CNT -- []str; POP
000001205     31                   PUSH_LOCAL str 16
000001206     31               CHANGE_REF_CNT -- str; POP
000001207     31                   PUSH_LOCAL str -16
000001208     31               CHANGE_REF_CNT -- str; POP
000001209     31                  LEAVE_FRAME
000001210     31                       RETURN 6


Function: _has_prefix

000001211     42                  ENTER_FRAME 1
000001212     34                   PUSH_LOCAL int 24
000001213     34                   PUSH_LOCAL int 32
000001214     34                       BINARY - int 8
000001215     34                   PUSH_LOCAL int 16
000001216     34                       BINARY < int 8
000001217     34                      GOTO_IF 1219

000001218     34                         GOTO 1222

000001219     34                         PUSH int 0
000001220     34                      POP_REG 0
000001221     42                         GOTO 1251

000001222     36                         PUSH int 0
000001223     36               PUSH_LOCAL_PTR -16
000001224     36                 SWAP; ASSIGN int 8
000001225     36                   PUSH_LOCAL int -16
000001226     36                   PUSH_LOCAL int 16
000001227     36                       BINARY < int 8
000001228     36                      GOTO_IF 1233

000001229     39                         GOTO 1248

000001230     36               PUSH_LOCAL_PTR -16
000001231     36                        UNARY ++ int
000001232     36                         GOTO 1225

000001233     37                   PUSH_LOCAL str 48
000001234     37                   PUSH_LOCAL int 32
000001235     37                GET_ARRAY_PTR char 1 -1; DEREF
000001236     37                   PUSH_LOCAL str 40
000001237     37                   PUSH_LOCAL int -16
000001238     37                GET_ARRAY_PTR char 1 -1; DEREF
000001239     37                       BINARY != char 1
000001240     37                      GOTO_IF 1242

000001241     37                         GOTO 1245

000001242     37                         PUSH int 0
000001243     37                      POP_REG 0
000001244     42                         GOTO 1251

000001245     38               PUSH_LOCAL_PTR 32
000001246     38                        UNARY ++ int
000001247     39                         GOTO 1230

000001248     41                         PUSH int 1
000001249     41                      POP_REG 0
000001250     42                         GOTO 1251

000001251     42                   PUSH_LOCAL interface 56
000001252     42               CHANGE_REF_CNT -- interface; POP
000001253     42                   PUSH_LOCAL str 48
000001254     42               CHANGE_REF_CNT -- str; POP
000001255     42                   PUSH_LOCAL str 40
000001256     42               CHANGE_REF_CNT -- str; POP
000001257     42                  LEAVE_FRAME
000001258     42                       RETURN 7


Function: has_prefix

000001259     49                  ENTER_FRAME 0
000001260     48                    PUSH_ZERO 2
000001261     48                   PUSH_LOCAL str 24
000001262     48               CHANGE_REF_CNT ++ str
000001263     48                   PUSH_LOCAL str 16
000001264     48               CHANGE_REF_CNT ++ str
000001265     48                         PUSH int 0
000001266     48                   PUSH_LOCAL str 24
000001267     48                 CALL_BUILTIN str len
000001268     48                   PUSH_LOCAL str 16
000001269     48                 CALL_BUILTIN str len
000001270     48                         CALL _has_prefix (1211)
000001271     48                     PUSH_REG 0
000001272     48                      POP_REG 0
000001273     49                         GOTO 1274

000001274     49                   PUSH_LOCAL interface 32
000001275     49               CHANGE_REF_CNT -- interface; POP
000001276     49                   PUSH_LOCAL str 24
000001277     49               CHANGE_REF_CNT -- str; POP
000001278     49                   PUSH_LOCAL str 16
000001279     49               CHANGE_REF_CNT -- str; POP
000001280     49                  LEAVE_FRAME
000001281     49                       RETURN 4


Function: split

000001282     72                  ENTER_FRAME 29
000001283     55               PUSH_LOCAL_PTR -8
000001284     55                         ZERO 0
000001285     55               PUSH_LOCAL_PTR -8
000001286     55                         PUSH ^ 0x557ddba6d400
000001287     55                         PUSH int 0
000001288     55               PUSH_LOCAL_PTR -32
000001289     55                 CALL_BUILTIN [] makefromarr
000001290     55               PUSH_LOCAL_PTR -80
000001291     55                 SWAP; ASSIGN [] 24
000001292     56                         PUSH int 0
000001293     56               PUSH_LOCAL_PTR -88
000001294     56                 SWAP; ASSIGN int 8
000001295     58                   PUSH_LOCAL str 24
000001296     58                 CALL_BUILTIN str len
000001297     58               PUSH_LOCAL_PTR -96
000001298     58                 SWAP; ASSIGN int 8
000001299     59                   PUSH_LOCAL str 32
000001300     59                 CALL_BUILTIN str len
000001301     59               PUSH_LOCAL_PTR -104
000001302     59                 SWAP; ASSIGN int 8
000001303     61                         PUSH int 0
000001304     61               PUSH_LOCAL_PTR -112
000001305     61                 SWAP; ASSIGN int 8
000001306     61                   PUSH_LOCAL int -112
000001307     61                   PUSH_LOCAL int -104
000001308     61                       BINARY < int 8
000001309     61                      GOTO_IF 1314

000001310     67                         GOTO 1361

000001311     61               PUSH_LOCAL_PTR -112
000001312     61                        UNARY ++ int
000001313     61                         GOTO 1306

000001314     62                    PUSH_ZERO 2
000001315     62                   PUSH_LOCAL str 32
000001316     62               CHANGE_REF_CNT ++ str
000001317     62                   PUSH_LOCAL str 24
000001318     62               CHANGE_REF_CNT ++ str
000001319     62                   PUSH_LOCAL int -112
000001320     62                   PUSH_LOCAL int -104
000001321     62                   PUSH_LOCAL int -96
000001322     62                         CALL _has_prefix (1211)
000001323     62                     PUSH_REG 0
000001324     62                      GOTO_IF 1326

000001325     66                         GOTO 1360

000001326     63               PUSH_LOCAL_PTR -80
000001327     63               PUSH_LOCAL_PTR -80
000001328     63                   PUSH_LOCAL str 32
000001329     63                   PUSH_LOCAL int -88
000001330     63                   PUSH_LOCAL int -112
000001331     63                         PUSH ^ 0x557ddb9a9010
000001332     63                         PUSH ^ (nil)
000001333     63                 CALL_BUILTIN [] slice
000001334     63                          DUP
000001335     63               PUSH_LOCAL_PTR -120
000001336     63                 SWAP; ASSIGN str 8
000001337     63               PUSH_LOCAL_PTR -128
000001338     63                 SWAP; ASSIGN str 0
000001339     63               PUSH_LOCAL_PTR -128
000001340     63                         PUSH int 1
000001341     63                         PUSH ^ 0x557ddba6d400
000001342     63               PUSH_LOCAL_PTR -152
000001343     63                 CALL_BUILTIN [] append
000001344     63        CHANGE_REF_CNT_ASSIGN -- []str
000001345     64               PUSH_LOCAL_PTR -112
000001346     64                          DUP
000001347     64                        DEREF int
000001348     64                   PUSH_LOCAL int -96
000001349     64                         PUSH int 1
000001350     64                       BINARY - int 8
000001351     64                       BINARY + int 8
000001352     64                       ASSIGN int 8
000001353     65               PUSH_LOCAL_PTR -88
000001354     65                   PUSH_LOCAL int -112
000001355     65                         PUSH int 1
000001356     65                       BINARY + int 8
000001357     65                       ASSIGN int 8
000001358     66                   PUSH_LOCAL str -120
000001359     66               CHANGE_REF_CNT -- str; POP
000001360     67                         GOTO 1311

000001361     69               PUSH_LOCAL_PTR -80
000001362     69               PUSH_LOCAL_PTR -80
000001363     69                   PUSH_LOCAL str 32
000001364     69                   PUSH_LOCAL int -88
000001365     69                         PUSH int -2147483648
000001366     69                         PUSH ^ 0x557ddb9a9010
000001367     69                         PUSH ^ (nil)
000001368     69                 CALL_BUILTIN [] slice
000001369     69                          DUP
000001370     69               PUSH_LOCAL_PTR -184
000001371     69                 SWAP; ASSIGN str 8
000001372     69               PUSH_LOCAL_PTR -192
000001373     69                 SWAP; ASSIGN str 0
000001374     69               PUSH_LOCAL_PTR -192
000001375     69                         PUSH int 1
000001376     69                         PUSH ^ 0x557ddba6d400
000001377     69               PUSH_LOCAL_PTR -216
000001378     69                 CALL_BUILTIN [] append
000001379     69        CHANGE_REF_CNT_ASSIGN -- []str
000001380     71               PUSH_LOCAL_PTR -80
000001381     71                   PUSH_LOCAL ^ 16
000001382     71                 SWAP; ASSIGN [] 24
000001383     71                   PUSH_LOCAL ^ 16
000001384     71               CHANGE_REF_CNT ++ []str
000001385     71                      POP_REG 0
000001386     72                         GOTO 1387

000001387     72                   PUSH_LOCAL interface 40
000001388     72               CHANGE_REF_CNT -- interface; POP
000001389     72                   PUSH_LOCAL str 32
000001390     72               CHANGE_REF_CNT -- str; POP
000001391     72                   PUSH_LOCAL str 24
000001392     72               CHANGE_REF_CNT -- str; POP
000001393     72                   PUSH_LOCAL [...] -8
000001394     72               CHANGE_REF_CNT -- [0]str; POP
000001395     72                   PUSH_LOCAL [] -80
000001396     72               CHANGE_REF_CNT -- []str; POP
000001397     72                   PUSH_LOCAL str -184
000001398     72               CHANGE_REF_CNT -- str; POP
000001399     72                  LEAVE_FRAME
000001400     72                       RETURN 5


Function: replace

000001401     79                  ENTER_FRAME 7
000001402     78                    PUSH_ZERO 4
000001403     78                   PUSH_LOCAL str 32
000001404     78               CHANGE_REF_CNT ++ str
000001405     78                   PUSH_LOCAL str 24
000001406     78               CHANGE_REF_CNT ++ str
000001407     78               PUSH_LOCAL_PTR -32
000001408     78                         CALL split (1282)
000001409     78                     PUSH_REG 0
000001410     78                  PUSH_STRUCT 24
000001411     78                   PUSH_LOCAL str 16
000001412     78               CHANGE_REF_CNT ++ str
000001413     78                         CALL join (1147)
000001414     78                     PUSH_REG 0
000001415     78                      POP_REG 0
000001416     79                         GOTO 1417

000001417     79                   PUSH_LOCAL interface 40
000001418     79               CHANGE_REF_CNT -- interface; POP
000001419     79                   PUSH_LOCAL str 32
000001420     79               CHANGE_REF_CNT -- str; POP
000001421     79                   PUSH_LOCAL str 24
000001422     79               CHANGE_REF_CNT -- str; POP
000001423     79                   PUSH_LOCAL str 16
000001424     79               CHANGE_REF_CNT -- str; POP
000001425     79                  LEAVE_FRAME
000001426     79                       RETURN 5


Function: chartoupper

000001427     87                  ENTER_FRAME 0
000001428     82                   PUSH_LOCAL char 16
000001429     82                 ASSERT_RANGE int
000001430     82                         PUSH int 97
000001431     82                 ASSERT_RANGE int
000001432     82                       BINARY >= int 8
000001433     82                          DUP
000001434     82                      POP_REG 2
000001435     82                      GOTO_IF 1437

000001436     82                         GOTO 1443

000001437     82                   PUSH_LOCAL char 16
000001438     82                 ASSERT_RANGE int
000001439     82                         PUSH int 122
000001440     82                 ASSERT_RANGE int
000001441     82                       BINARY <= int 8
000001442     82                      POP_REG 2
000001443     82                     PUSH_REG 2
000001444     82                      GOTO_IF 1446

000001445     84                         GOTO 1453

000001446     83                   PUSH_LOCAL char 16
000001447     83                 ASSERT_RANGE int
000001448     83                         PUSH int 32
000001449     83                       BINARY - int 8
000001450     83                 ASSERT_RANGE char
000001451     83                      POP_REG 0
000001452     87                         GOTO 1456

000001453     86                   PUSH_LOCAL char 16
000001454     86                      POP_REG 0
000001455     87                         GOTO 1456

000001456     87                   PUSH_LOCAL interface 24
000001457     87               CHANGE_REF_CNT -- interface; POP
000001458     87                  LEAVE_FRAME
000001459     87                       RETURN 3


Function: toupper

000001460    101                  ENTER_FRAME 12
000001461     93                   PUSH_LOCAL str 16
000001462     93                 CALL_BUILTIN str len
000001463     93               PUSH_LOCAL_PTR -16
000001464     93                 SWAP; ASSIGN int 8
000001465     94                         PUSH ^ 0x557ddba7e6c0
000001466     94                   PUSH_LOCAL int -16
000001467     94               PUSH_LOCAL_PTR -40
000001468     94                 CALL_BUILTIN [] make
000001469     94               PUSH_LOCAL_PTR -88
000001470     94                 SWAP; ASSIGN [] 24
000001471     96                         PUSH int 0
000001472     96               PUSH_LOCAL_PTR -96
000001473     96                 SWAP; ASSIGN int 8
000001474     96                   PUSH_LOCAL int -96
000001475     96                   PUSH_LOCAL int -16
000001476     96                       BINARY < int 8
000001477     96                      GOTO_IF 1482

000001478     98                         GOTO 1495

000001479     96               PUSH_LOCAL_PTR -96
000001480     96                        UNARY ++ int
000001481     96                         GOTO 1474

000001482     97               PUSH_LOCAL_PTR -88
000001483     97                   PUSH_LOCAL int -96
000001484     97             GET_DYNARRAY_PTR
000001485     97                    PUSH_ZERO 2
000001486     97                   PUSH_LOCAL str 16
000001487     97                   PUSH_LOCAL int -96
000001488     97                GET_ARRAY_PTR char 1 -1; DEREF
000001489     97                 ASSERT_RANGE char
000001490     97                 CALL_BUILTIN char narrow
000001491     97                         CALL chartoupper (1427)
000001492     97                     PUSH_REG 0
000001493     97                       ASSIGN char 1
000001494     98                         GOTO 1479

000001495    100               PUSH_LOCAL_PTR -88
000001496    100                 CALL_BUILTIN [] maketostr
000001497    100                      POP_REG 0
000001498    101                         GOTO 1499

000001499    101                   PUSH_LOCAL interface 24
000001500    101               CHANGE_REF_CNT -- interface; POP
000001501    101                   PUSH_LOCAL str 16
000001502    101               CHANGE_REF_CNT -- str; POP
000001503    101                   PUSH_LOCAL [] -88
000001504    101               CHANGE_REF_CNT -- []char; POP
000001505    101                  LEAVE_FRAME
000001506    101                       RETURN 3


Function: chartolower

000001507    109                  ENTER_FRAME 0
000001508    104                   PUSH_LOCAL char 16
000001509    104                 ASSERT_RANGE int
000001510    104                         PUSH int 63
000001511    104                       BINARY >= int 8
000001512    104                          DUP
000001513    104                      POP_REG 2
000001514    104                      GOTO_IF 1516

000001515    104                         GOTO 1521

000001516    104                   PUSH_LOCAL char 16
000001517    104                 ASSERT_RANGE int
000001518    104                         PUSH int 90
000001519    104                       BINARY <= int 8
000001520    104                      POP_REG 2
000001521    104                     PUSH_REG 2
000001522    104                      GOTO_IF 1524

000001523    106                         GOTO 1531

000001524    105                   PUSH_LOCAL char 16
000001525    105                 ASSERT_RANGE int
000001526    105                         PUSH int 32
000001527    105                       BINARY + int 8
000001528    105                 ASSERT_RANGE char
000001529    105                      POP_REG 0
000001530    109                         GOTO 1534

000001531    108                   PUSH_LOCAL char 16
000001532    108                      POP_REG 0
000001533    109                         GOTO 1534

000001534    109                   PUSH_LOCAL interface 24
000001535    109               CHANGE_REF_CNT -- interface; POP
000001536    109                  LEAVE_FRAME
000001537    109                       RETURN 3


Function: tolower

000001538    123                  ENTER_FRAME 12
000001539    115                   PUSH_LOCAL str 16
000001540    115                 CALL_BUILTIN str len
000001541    115               PUSH_LOCAL_PTR -16
000001542    115                 SWAP; ASSIGN int 8
000001543    116                         PUSH ^ 0x557ddba87230
000001544    116                   PUSH_LOCAL int -16
000001545    116               PUSH_LOCAL_PTR -40
000001546    116                 CALL_BUILTIN [] make
000001547    116               PUSH_LOCAL_PTR -88
000001548    116                 SWAP; ASSIGN [] 24
000001549    118                         PUSH int 0
000001550    118               PUSH_LOCAL_PTR -96
000001551    118                 SWAP; ASSIGN int 8
000001552    118                   PUSH_LOCAL int -96
000001553    118                   PUSH_LOCAL int -16
000001554    118                       BINARY < int 8
000001555    118                      GOTO_IF 1560

000001556    120                         GOTO 1573

000001557    118               PUSH_LOCAL_PTR -96
000001558    118                        UNARY ++ int
000001559    118                         GOTO 1552

000001560    119               PUSH_LOCAL_PTR -88
000001561    119                   PUSH_LOCAL int -96
000001562    119             GET_DYNARRAY_PTR
000001563    119                    PUSH_ZERO 2
000001564    119                   PUSH_LOCAL str 16
000001565    119                   PUSH_LOCAL int -96
000001566    119                GET_ARRAY_PTR char 1 -1; DEREF
000001567    119                 ASSERT_RANGE char
000001568    119                 CALL_BUILTIN char narrow
000001569    119                         CALL chartolower (1507)
000001570    119                     PUSH_REG 0
000001571    119                       ASSIGN char 1
000001572    120                         GOTO 1557

000001573    122               PUSH_LOCAL_PTR -88
000001574    122                 CALL_BUILTIN [] maketostr
000001575    122                      POP_REG 0
000001576    123                         GOTO 1577

000001577    123                   PUSH_LOCAL interface 24
000001578    123               CHANGE_REF_CNT -- interface; POP
000001579    123                   PUSH_LOCAL str 16
000001580    123               CHANGE_REF_CNT -- str; POP
000001581    123                   PUSH_LOCAL [] -88
000001582    123               CHANGE_REF_CNT -- []char; POP
000001583    123                  LEAVE_FRAME
000001584    123                       RETURN 3


Function: repeat

000001585    132                  ENTER_FRAME 3
000001586    129                         PUSH ^ 0x557ddba6f1b0
000001587    129               CHANGE_REF_CNT ++ str
000001588    129               PUSH_LOCAL_PTR -16
000001589    129                 SWAP; ASSIGN str 8
000001590    130                         PUSH int 0
000001591    130               PUSH_LOCAL_PTR -24
000001592    130                 SWAP; ASSIGN int 8
000001593    130                   PUSH_LOCAL int -24
000001594    130                   PUSH_LOCAL int 16
000001595    130                       BINARY < int 8
000001596    130                      GOTO_IF 1601

000001597    130                         GOTO 1613

000001598    130               PUSH_LOCAL_PTR -24
000001599    130                        UNARY ++ int
000001600    130                         GOTO 1593

000001601    130               PUSH_LOCAL_PTR -16
000001602    130                          DUP
000001603    130                        DEREF str
000001604    130                   PUSH_LOCAL str 24
000001605    130                       BINARY += str 0
000001606    130                          DUP
000001607    130               PUSH_LOCAL_PTR -32
000001608    130                 SWAP; ASSIGN str 8
000001609    130        CHANGE_REF_CNT_ASSIGN str
000001610    130                   PUSH_LOCAL str -32
000001611    130               CHANGE_REF_CNT -- str; POP
000001612    130                         GOTO 1598

000001613    131                   PUSH_LOCAL str -16
000001614    131               CHANGE_REF_CNT ++ str
000001615    131                      POP_REG 0
000001616    132                         GOTO 1617

000001617    132                   PUSH_LOCAL interface 32
000001618    132               CHANGE_REF_CNT -- interface; POP
000001619    132                   PUSH_LOCAL str 24
000001620    132               CHANGE_REF_CNT -- str; POP
000001621    132                   PUSH_LOCAL str -16
000001622    132               CHANGE_REF_CNT -- str; POP
000001623    132                  LEAVE_FRAME
000001624    132                       RETURN 4


Function: trimspaces

000001625    162                  ENTER_FRAME 3
000001626    138                   PUSH_LOCAL str 16
000001627    138                 CALL_BUILTIN str len
000001628    138                         PUSH int 0
000001629    138                       BINARY == int 8
000001630    138                      GOTO_IF 1632

000001631    140                         GOTO 1636

000001632    139                         PUSH ^ 0x557ddb9c2050
000001633    139               CHANGE_REF_CNT ++ str
000001634    139                      POP_REG 0
000001635    162                         GOTO 1717

000001636    142               PUSH_LOCAL_PTR -16
000001637    142                         ZERO 8
000001638    142               PUSH_LOCAL_PTR -24
000001639    142                         ZERO 8
000001640    144                   PUSH_LOCAL int -16
000001641    144                   PUSH_LOCAL str 16
000001642    144                 CALL_BUILTIN str len
000001643    144                       BINARY < int 8
000001644    144                          DUP
000001645    144                      POP_REG 2
000001646    144                      GOTO_IF 1648

000001647    144                         GOTO 1654

000001648    144                   PUSH_LOCAL str 16
000001649    144                   PUSH_LOCAL int -16
000001650    144                GET_ARRAY_PTR char 1 -1; DEREF
000001651    144                         PUSH int 32
000001652    144                       BINARY == char 1
000001653    144                      POP_REG 2
000001654    144                     PUSH_REG 2
000001655    144                      GOTO_IF 1658

000001656    146                         GOTO 1661

000001657    144                         GOTO 1640

000001658    145               PUSH_LOCAL_PTR -16
000001659    145                        UNARY ++ int
000001660    146                         GOTO 1657

000001661    148                   PUSH_LOCAL int -16
000001662    148                   PUSH_LOCAL str 16
000001663    148                 CALL_BUILTIN str len
000001664    148                       BINARY >= int 8
000001665    148                      GOTO_IF 1667

000001666    150                         GOTO 1671

000001667    149                         PUSH ^ 0x557ddba6fc50
000001668    149               CHANGE_REF_CNT ++ str
000001669    149                      POP_REG 0
000001670    162                         GOTO 1717

000001671    152               PUSH_LOCAL_PTR -24
000001672    152                   PUSH_LOCAL str 16
000001673    152                 CALL_BUILTIN str len
000001674    152                         PUSH int 1
000001675    152                       BINARY - int 8
000001676    152                       ASSIGN int 8
000001677    153                   PUSH_LOCAL int -24
000001678    153                         PUSH int 0
000001679    153                       BINARY >= int 8
000001680    153                          DUP
000001681    153                      POP_REG 2
000001682    153                      GOTO_IF 1684

000001683    153                         GOTO 1690

000001684    153                   PUSH_LOCAL str 16
000001685    153                   PUSH_LOCAL int -24
000001686    153                GET_ARRAY_PTR char 1 -1; DEREF
000001687    153                         PUSH int 32
000001688    153                       BINARY == char 1
000001689    153                      POP_REG 2
000001690    153                     PUSH_REG 2
000001691    153                      GOTO_IF 1694

000001692    155                         GOTO 1697

000001693    153                         GOTO 1677

000001694    154               PUSH_LOCAL_PTR -24
000001695    154                        UNARY -- int
000001696    155                         GOTO 1693

000001697    157                   PUSH_LOCAL int -24
000001698    157                   PUSH_LOCAL str 16
000001699    157                 CALL_BUILTIN str len
000001700    157                       BINARY > int 8
000001701    157                      GOTO_IF 1703

000001702    159                         GOTO 1707

000001703    158               PUSH_LOCAL_PTR -24
000001704    158                   PUSH_LOCAL str 16
000001705    158                 CALL_BUILTIN str len
000001706    158                       ASSIGN int 8
000001707    161                   PUSH_LOCAL str 16
000001708    161                   PUSH_LOCAL int -16
000001709    161                   PUSH_LOCAL int -24
000001710    161                         PUSH int 1
000001711    161                       BINARY + int 8
000001712    161                         PUSH ^ 0x557ddb9a9010
000001713    161                         PUSH ^ (nil)
000001714    161                 CALL_BUILTIN [] slice
000001715    161                      POP_REG 0
000001716    162                         GOTO 1717

000001717    162                   PUSH_LOCAL interface 24
000001718    162               CHANGE_REF_CNT -- interface; POP
000001719    162                   PUSH_LOCAL str 16
000001720    162               CHANGE_REF_CNT -- str; POP
000001721    162                  LEAVE_FRAME
000001722    162                       RETURN 3


Function: trimprefix

000001723    179                  ENTER_FRAME 2
000001724    168                         PUSH int 0
000001725    168               PUSH_LOCAL_PTR -16
000001726    168                 SWAP; ASSIGN int 8
000001727    170                   PUSH_LOCAL int -16
000001728    170                   PUSH_LOCAL str 16
000001729    170                 CALL_BUILTIN str len
000001730    170                       BINARY < int 8
000001731    170                          DUP
000001732    170                      POP_REG 2
000001733    170                      GOTO_IF 1735

000001734    170                         GOTO 1740

000001735    170                   PUSH_LOCAL int -16
000001736    170                   PUSH_LOCAL str 24
000001737    170                 CALL_BUILTIN str len
000001738    170                       BINARY < int 8
000001739    170                      POP_REG 2
000001740    170                     PUSH_REG 2
000001741    170                          DUP
000001742    170                      POP_REG 2
000001743    170                      GOTO_IF 1745

000001744    170                         GOTO 1753

000001745    170                   PUSH_LOCAL str 24
000001746    170                   PUSH_LOCAL int -16
000001747    170                GET_ARRAY_PTR char 1 -1; DEREF
000001748    170                   PUSH_LOCAL str 16
000001749    170                   PUSH_LOCAL int -16
000001750    170                GET_ARRAY_PTR char 1 -1; DEREF
000001751    170                       BINARY == char 1
000001752    170                      POP_REG 2
000001753    170                     PUSH_REG 2
000001754    170                      GOTO_IF 1757

000001755    172                         GOTO 1760

000001756    170                         GOTO 1727

000001757    171               PUSH_LOCAL_PTR -16
000001758    171                        UNARY ++ int
000001759    172                         GOTO 1756

000001760    174                   PUSH_LOCAL int -16
000001761    174                   PUSH_LOCAL str 16
000001762    174                 CALL_BUILTIN str len
000001763    174                       BINARY != int 8
000001764    174                      GOTO_IF 1766

000001765    176                         GOTO 1770

000001766    175                   PUSH_LOCAL str 24
000001767    175               CHANGE_REF_CNT ++ str
000001768    175                      POP_REG 0
000001769    179                         GOTO 1779

000001770    178                   PUSH_LOCAL str 24
000001771    178                   PUSH_LOCAL int -16
000001772    178                   PUSH_LOCAL str 24
000001773    178                 CALL_BUILTIN str len
000001774    178                         PUSH ^ 0x557ddb9a9010
000001775    178                         PUSH ^ (nil)
000001776    178                 CALL_BUILTIN [] slice
000001777    178                      POP_REG 0
000001778    179                         GOTO 1779

000001779    179                   PUSH_LOCAL interface 32
000001780    179               CHANGE_REF_CNT -- interface; POP
000001781    179                   PUSH_LOCAL str 24
000001782    179               CHANGE_REF_CNT -- str; POP
000001783    179                   PUSH_LOCAL str 16
000001784    179               CHANGE_REF_CNT -- str; POP
000001785    179                  LEAVE_FRAME
000001786    179                       RETURN 4


Function: trimsuffix

000001787    196                  ENTER_FRAME 3
000001788    185                   PUSH_LOCAL str 24
000001789    185                 CALL_BUILTIN str len
000001790    185                         PUSH int 1
000001791    185                       BINARY - int 8
000001792    185               PUSH_LOCAL_PTR -16
000001793    185                 SWAP; ASSIGN int 8
000001794    187                   PUSH_LOCAL str 16
000001795    187                 CALL_BUILTIN str len
000001796    187                         PUSH int 1
000001797    187                       BINARY - int 8
000001798    187               PUSH_LOCAL_PTR -24
000001799    187                 SWAP; ASSIGN int 8
000001800    187                   PUSH_LOCAL int -24
000001801    187                         PUSH int 0
000001802    187                       BINARY >= int 8
000001803    187                          DUP
000001804    187                      POP_REG 2
000001805    187                      GOTO_IF 1807

000001806    187                         GOTO 1811

000001807    187                   PUSH_LOCAL int -16
000001808    187                         PUSH int 0
000001809    187                       BINARY >= int 8
000001810    187                      POP_REG 2
000001811    187                     PUSH_REG 2
000001812    187                          DUP
000001813    187                      POP_REG 2
000001814    187                      GOTO_IF 1816

000001815    187                         GOTO 1824

000001816    187                   PUSH_LOCAL str 24
000001817    187                   PUSH_LOCAL int -16
000001818    187                GET_ARRAY_PTR char 1 -1; DEREF
000001819    187                   PUSH_LOCAL str 16
000001820    187                   PUSH_LOCAL int -24
000001821    187                GET_ARRAY_PTR char 1 -1; DEREF
000001822    187                       BINARY == char 1
000001823    187                      POP_REG 2
000001824    187                     PUSH_REG 2
000001825    187                      GOTO_IF 1830

000001826    189                         GOTO 1833

000001827    187               PUSH_LOCAL_PTR -24
000001828    187                        UNARY -- int
000001829    187                         GOTO 1800

000001830    188               PUSH_LOCAL_PTR -16
000001831    188                        UNARY -- int
000001832    189                         GOTO 1827

000001833    191                   PUSH_LOCAL str 24
000001834    191                 CALL_BUILTIN str len
000001835    191                         PUSH int 1
000001836    191                       BINARY - int 8
000001837    191                   PUSH_LOCAL int -16
000001838    191                       BINARY - int 8
000001839    191                   PUSH_LOCAL str 16
000001840    191                 CALL_BUILTIN str len
000001841    191                       BINARY != int 8
000001842    191                      GOTO_IF 1844

000001843    193                         GOTO 1848

000001844    192                   PUSH_LOCAL str 24
000001845    192               CHANGE_REF_CNT ++ str
000001846    192                      POP_REG 0
000001847    196                         GOTO 1858

000001848    195                   PUSH_LOCAL str 24
000001849    195                         PUSH int 0
000001850    195                   PUSH_LOCAL int -16
000001851    195                         PUSH int 1
000001852    195                       BINARY + int 8
000001853    195                         PUSH ^ 0x557ddb9a9010
000001854    195                         PUSH ^ (nil)
000001855    195                 CALL_BUILTIN [] slice
000001856    195                      POP_REG 0
000001857    196                         GOTO 1858

000001858    196                   PUSH_LOCAL interface 32
000001859    196               CHANGE_REF_CNT -- interface; POP
000001860    196                   PUSH_LOCAL str 24
000001861    196               CHANGE_REF_CNT -- str; POP
000001862    196                   PUSH_LOCAL str 16
000001863    196               CHANGE_REF_CNT -- str; POP
000001864    196                  LEAVE_FRAME
000001865    196                       RETURN 4


Module: /home/marek/dev/umlibs/tar/pak/os/pak/filepath/filepath.um


Function: init

000001866     33                  ENTER_FRAME 1
000001867     22                         PUSH ^ 0x557ddba6fc80
000001868     22                         PUSH int 1
000001869     22                       ASSIGN int 8
000001870     23                    PUSH_ZERO 2
000001871     23                         PUSH ^ 0x557ddba75920
000001872     23               CHANGE_REF_CNT ++ str
000001873     23                         CALL getenv (914)
000001874     23                     PUSH_REG 0
000001875     23                          DUP
000001876     23               PUSH_LOCAL_PTR -16
000001877     23                 SWAP; ASSIGN str 8
000001878     23                         PUSH ^ 0x557ddb992320
000001879     23                       BINARY != str 8
000001880     23                      GOTO_IF 1882

000001881     25                         GOTO 1885

000001882     24                         PUSH ^ 0x557ddba6fc80
000001883     24                         PUSH int 2
000001884     24                       ASSIGN int 8
000001885     25                   PUSH_LOCAL str -16
000001886     25               CHANGE_REF_CNT -- str; POP
000001887     27                         PUSH int 0x557ddba6fc80; DEREF
000001888     27                      POP_REG 2
000001889     27                         PUSH int 0
000001890     27                      POP_REG 3
000001891     28                     PUSH_REG 2
000001892     28                         PUSH int 2
000001893     28                       BINARY == int 0
000001894     28                     PUSH_REG 3
000001895     28                       BINARY | bool 0
000001896     28                      POP_REG 3
000001897     29                     PUSH_REG 3
000001898     29                      GOTO_IF 1900

000001899     30                         GOTO 1904

000001900     29                         PUSH ^ 0x557ddba6fc60
000001901     29                         PUSH int 47
000001902     29                       ASSIGN char 1
000001903     32                         GOTO 1917

000001904     30                     PUSH_REG 2
000001905     30                         PUSH int 1
000001906     30                       BINARY == int 0
000001907     30                     PUSH_REG 3
000001908     30                       BINARY | bool 0
000001909     30                      POP_REG 3
000001910     31                     PUSH_REG 3
000001911     31                      GOTO_IF 1913

000001912     32                         GOTO 1917

000001913     31                         PUSH ^ 0x557ddba6fc60
000001914     31                         PUSH int 92
000001915     31                       ASSIGN char 1
000001916     32                         GOTO 1917

000001917     33                   PUSH_LOCAL interface 16
000001918     33               CHANGE_REF_CNT -- interface; POP
000001919     33                  LEAVE_FRAME
000001920     33                       RETURN 2


Function: dir

000001921     48                  ENTER_FRAME 18
000001922     39                         PUSH int 0x557ddba6fc80; DEREF
000001923     39                         PUSH int 0
000001924     39                       BINARY == int 8
000001925     39                      GOTO_IF 1927

000001926     41                         GOTO 1929

000001927     40                    PUSH_ZERO 2
000001928     40                         CALL init (1866)
000001929     43                    PUSH_ZERO 2
000001930     43                   PUSH_LOCAL str 16
000001931     43               CHANGE_REF_CNT ++ str
000001932     43                         PUSH char 0x557ddba6fc60; DEREF
000001933     43                 CALL_BUILTIN char maketostr
000001934     43               PUSH_LOCAL_PTR -40
000001935     43                         CALL split (1282)
000001936     43                     PUSH_REG 0
000001937     43               PUSH_LOCAL_PTR -88
000001938     43                 SWAP; ASSIGN [] 24
000001939     44               PUSH_LOCAL_PTR -88
000001940     44                 CALL_BUILTIN [] len
000001941     44                         PUSH int 2
000001942     44                       BINARY < int 8
000001943     44                      GOTO_IF 1945

000001944     46                         GOTO 1949

000001945     45                         PUSH ^ 0x557ddb992360
000001946     45               CHANGE_REF_CNT ++ str
000001947     45                      POP_REG 0
000001948     48                         GOTO 1966

000001949     47                    PUSH_ZERO 2
000001950     47               PUSH_LOCAL_PTR -88
000001951     47                         PUSH int 0
000001952     47               PUSH_LOCAL_PTR -88
000001953     47                 CALL_BUILTIN [] len
000001954     47                         PUSH int 1
000001955     47                       BINARY - int 8
000001956     47                         PUSH ^ 0x557ddba6c280
000001957     47               PUSH_LOCAL_PTR -112
000001958     47                 CALL_BUILTIN [] slice
000001959     47                  PUSH_STRUCT 24
000001960     47                         PUSH char 0x557ddba6fc60; DEREF
000001961     47                 CALL_BUILTIN char maketostr
000001962     47                         CALL join (1147)
000001963     47                     PUSH_REG 0
000001964     47                      POP_REG 0
000001965     48                         GOTO 1966

000001966     48                   PUSH_LOCAL interface 24
000001967     48               CHANGE_REF_CNT -- interface; POP
000001968     48                   PUSH_LOCAL str 16
000001969     48               CHANGE_REF_CNT -- str; POP
000001970     48                   PUSH_LOCAL [] -88
000001971     48               CHANGE_REF_CNT -- []str; POP
000001972     48                  LEAVE_FRAME
000001973     48                       RETURN 3


Function: file

000001974     63                  ENTER_FRAME 10
000001975     54                         PUSH int 0x557ddba6fc80; DEREF
000001976     54                         PUSH int 0
000001977     54                       BINARY == int 8
000001978     54                      GOTO_IF 1980

000001979     56                         GOTO 1982

000001980     55                    PUSH_ZERO 2
000001981     55                         CALL init (1866)
000001982     58                    PUSH_ZERO 2
000001983     58                   PUSH_LOCAL str 16
000001984     58               CHANGE_REF_CNT ++ str
000001985     58                         PUSH char 0x557ddba6fc60; DEREF
000001986     58                 CALL_BUILTIN char maketostr
000001987     58               PUSH_LOCAL_PTR -40
000001988     58                         CALL split (1282)
000001989     58                     PUSH_REG 0
000001990     58               PUSH_LOCAL_PTR -88
000001991     58                 SWAP; ASSIGN [] 24
000001992     59               PUSH_LOCAL_PTR -88
000001993     59                 CALL_BUILTIN [] len
000001994     59                         PUSH int 2
000001995     59                       BINARY < int 8
000001996     59                      GOTO_IF 1998

000001997     61                         GOTO 2002

000001998     60                   PUSH_LOCAL str 16
000001999     60               CHANGE_REF_CNT ++ str
000002000     60                      POP_REG 0
000002001     63                         GOTO 2011

000002002     62               PUSH_LOCAL_PTR -88
000002003     62               PUSH_LOCAL_PTR -88
000002004     62                 CALL_BUILTIN [] len
000002005     62                         PUSH int 1
000002006     62                       BINARY - int 8
000002007     62             GET_DYNARRAY_PTR str; DEREF
000002008     62               CHANGE_REF_CNT ++ str
000002009     62                      POP_REG 0
000002010     63                         GOTO 2011

000002011     63                   PUSH_LOCAL interface 24
000002012     63               CHANGE_REF_CNT -- interface; POP
000002013     63                   PUSH_LOCAL str 16
000002014     63               CHANGE_REF_CNT -- str; POP
000002015     63                   PUSH_LOCAL [] -88
000002016     63               CHANGE_REF_CNT -- []str; POP
000002017     63                  LEAVE_FRAME
000002018     63                       RETURN 3


Function: ext

000002019     75                  ENTER_FRAME 9
000002020     69                         PUSH int 0x557ddba6fc80; DEREF
000002021     69                         PUSH int 0
000002022     69                       BINARY == int 8
000002023     69                      GOTO_IF 2025

000002024     71                         GOTO 2027

000002025     70                    PUSH_ZERO 2
000002026     70                         CALL init (1866)
000002027     73                    PUSH_ZERO 2
000002028     73                   PUSH_LOCAL str 16
000002029     73               CHANGE_REF_CNT ++ str
000002030     73                         PUSH ^ 0x557ddb99d200
000002031     73               CHANGE_REF_CNT ++ str
000002032     73               PUSH_LOCAL_PTR -32
000002033     73                         CALL split (1282)
000002034     73                     PUSH_REG 0
000002035     73               PUSH_LOCAL_PTR -80
000002036     73                 SWAP; ASSIGN [] 24
000002037     74               PUSH_LOCAL_PTR -80
000002038     74               PUSH_LOCAL_PTR -80
000002039     74                 CALL_BUILTIN [] len
000002040     74                         PUSH int 1
000002041     74                       BINARY - int 8
000002042     74             GET_DYNARRAY_PTR str; DEREF
000002043     74               CHANGE_REF_CNT ++ str
000002044     74                      POP_REG 0
000002045     75                         GOTO 2046

000002046     75                   PUSH_LOCAL interface 24
000002047     75               CHANGE_REF_CNT -- interface; POP
000002048     75                   PUSH_LOCAL str 16
000002049     75               CHANGE_REF_CNT -- str; POP
000002050     75                   PUSH_LOCAL [] -80
000002051     75               CHANGE_REF_CNT -- []str; POP
000002052     75                  LEAVE_FRAME
000002053     75                       RETURN 3


Function: fromslash

000002054     86                  ENTER_FRAME 2
000002055     81                         PUSH int 0x557ddba6fc80; DEREF
000002056     81                         PUSH int 0
000002057     81                       BINARY == int 8
000002058     81                      GOTO_IF 2060

000002059     83                         GOTO 2062

000002060     82                    PUSH_ZERO 2
000002061     82                         CALL init (1866)
000002062     85                    PUSH_ZERO 2
000002063     85                   PUSH_LOCAL str 16
000002064     85               CHANGE_REF_CNT ++ str
000002065     85                         PUSH ^ 0x557ddb99d240
000002066     85               CHANGE_REF_CNT ++ str
000002067     85                         PUSH char 0x557ddba6fc60; DEREF
000002068     85                 CALL_BUILTIN char maketostr
000002069     85                         CALL replace (1401)
000002070     85                     PUSH_REG 0
000002071     85                      POP_REG 0
000002072     86                         GOTO 2073

000002073     86                   PUSH_LOCAL interface 24
000002074     86               CHANGE_REF_CNT -- interface; POP
000002075     86                   PUSH_LOCAL str 16
000002076     86               CHANGE_REF_CNT -- str; POP
000002077     86                  LEAVE_FRAME
000002078     86                       RETURN 3


Function: toslash

000002079     96                  ENTER_FRAME 2
000002080     91                         PUSH int 0x557ddba6fc80; DEREF
000002081     91                         PUSH int 0
000002082     91                       BINARY == int 8
000002083     91                      GOTO_IF 2085

000002084     93                         GOTO 2087

000002085     92                    PUSH_ZERO 2
000002086     92                         CALL init (1866)
000002087     95                    PUSH_ZERO 2
000002088     95                   PUSH_LOCAL str 16
000002089     95               CHANGE_REF_CNT ++ str
000002090     95                         PUSH char 0x557ddba6fc60; DEREF
000002091     95                 CALL_BUILTIN char maketostr
000002092     95                         PUSH ^ 0x557ddb99d280
000002093     95               CHANGE_REF_CNT ++ str
000002094     95                         CALL replace (1401)
000002095     95                     PUSH_REG 0
000002096     95                      POP_REG 0
000002097     96                         GOTO 2098

000002098     96                   PUSH_LOCAL interface 24
000002099     96               CHANGE_REF_CNT -- interface; POP
000002100     96                   PUSH_LOCAL str 16
000002101     96               CHANGE_REF_CNT -- str; POP
000002102     96                  LEAVE_FRAME
000002103     96                       RETURN 3


Function: join

000002104    115                  ENTER_FRAME 10
000002105    102                         PUSH int 0x557ddba6fc80; DEREF
000002106    102                         PUSH int 0
000002107    102                       BINARY == int 8
000002108    102                      GOTO_IF 2110

000002109    104                         GOTO 2112

000002110    103                    PUSH_ZERO 2
000002111    103                         CALL init (1866)
000002112    106                         PUSH ^ 0x557ddba4f000
000002113    106               CHANGE_REF_CNT ++ str
000002114    106               PUSH_LOCAL_PTR -16
000002115    106                 SWAP; ASSIGN str 8
000002116    107               PUSH_LOCAL_PTR 16
000002117    107                          DUP
000002118    107                 CALL_BUILTIN [] len
000002119    107               PUSH_LOCAL_PTR -24
000002120    107                 SWAP; ASSIGN int 8
000002121    107               PUSH_LOCAL_PTR -48
000002122    107                         ZERO 24
000002123    107               PUSH_LOCAL_PTR -48
000002124    107  SWAP; CHANGE_REF_CNT_ASSIGN []str
000002125    107               PUSH_LOCAL_PTR -56
000002126    107                         ZERO 8
000002127    107               PUSH_LOCAL_PTR -64
000002128    107                         ZERO 8
000002129    107                   PUSH_LOCAL int -56
000002130    107                   PUSH_LOCAL int -24
000002131    107                       BINARY < int 0
000002132    107                      GOTO_IF 2137

000002133    112                         GOTO 2179

000002134    107               PUSH_LOCAL_PTR -56
000002135    107                        UNARY ++ int
000002136    107                         GOTO 2129

000002137    107                   PUSH_LOCAL [] -48
000002138    107                   PUSH_LOCAL int -56
000002139    107             GET_DYNARRAY_PTR str; DEREF
000002140    107               PUSH_LOCAL_PTR -64
000002141    107  SWAP; CHANGE_REF_CNT_ASSIGN str
000002142    108               PUSH_LOCAL_PTR -16
000002143    108                          DUP
000002144    108                        DEREF str
000002145    108                   PUSH_LOCAL str -64
000002146    108                       BINARY += str 0
000002147    108                          DUP
000002148    108               PUSH_LOCAL_PTR -72
000002149    108                 SWAP; ASSIGN str 8
000002150    108        CHANGE_REF_CNT_ASSIGN str
000002151    109                   PUSH_LOCAL int -56
000002152    109               PUSH_LOCAL_PTR 16
000002153    109                 CALL_BUILTIN [] len
000002154    109                         PUSH int 1
000002155    109                       BINARY - int 8
000002156    109                       BINARY < int 8
000002157    109                      GOTO_IF 2159

000002158    111                         GOTO 2176

000002159    110               PUSH_LOCAL_PTR -16
000002160    110                          DUP
000002161    110                        DEREF str
000002162    110                         PUSH char 0x557ddba6fc60; DEREF
000002163    110                 CALL_BUILTIN char maketostr
000002164    110                          DUP
000002165    110               PUSH_LOCAL_PTR -80
000002166    110                 SWAP; ASSIGN str 8
000002167    110                       BINARY += str 0
000002168    110                          DUP
000002169    110               PUSH_LOCAL_PTR -88
000002170    110                 SWAP; ASSIGN str 8
000002171    110        CHANGE_REF_CNT_ASSIGN str
000002172    111                   PUSH_LOCAL str -80
000002173    111               CHANGE_REF_CNT -- str; POP
000002174    111                   PUSH_LOCAL str -88
000002175    111               CHANGE_REF_CNT -- str; POP
000002176    112                   PUSH_LOCAL str -72
000002177    112               CHANGE_REF_CNT -- str; POP
000002178    112                         GOTO 2134

000002179    112                   PUSH_LOCAL [] -48
000002180    112               CHANGE_REF_CNT -- []str; POP
000002181    112                   PUSH_LOCAL str -64
000002182    112               CHANGE_REF_CNT -- str; POP
000002183    114                   PUSH_LOCAL str -16
000002184    114               CHANGE_REF_CNT ++ str
000002185    114                      POP_REG 0
000002186    115                         GOTO 2187

000002187    115                   PUSH_LOCAL interface 40
000002188    115               CHANGE_REF_CNT -- interface; POP
000002189    115                   PUSH_LOCAL [] 16
000002190    115               CHANGE_REF_CNT -- []str; POP
000002191    115                   PUSH_LOCAL str -16
000002192    115               CHANGE_REF_CNT -- str; POP
000002193    115                  LEAVE_FRAME
000002194    115                       RETURN 5


Function: main

000002195    125                  ENTER_FRAME 16
000002196    118                    PUSH_ZERO 2
000002197    118                         PUSH ^ 0x557ddba4fae0
000002198    118                         PUSH ^ 0x557ddba4fb20
000002199    118                         PUSH ^ 0x557ddba4fb60
000002200    118               PUSH_LOCAL_PTR -32
000002201    118                         ZERO 24
000002202    118               PUSH_LOCAL_PTR -16
000002203    118  SWAP; CHANGE_REF_CNT_ASSIGN str
000002204    118               PUSH_LOCAL_PTR -24
000002205    118  SWAP; CHANGE_REF_CNT_ASSIGN str
000002206    118               PUSH_LOCAL_PTR -32
000002207    118  SWAP; CHANGE_REF_CNT_ASSIGN str
000002208    118               PUSH_LOCAL_PTR -32
000002209    118                         PUSH ^ 0x557ddba4de70
000002210    118                         PUSH int 3
000002211    118               PUSH_LOCAL_PTR -56
000002212    118                 CALL_BUILTIN [] makefromarr
000002213    118                  PUSH_STRUCT 24
000002214    118                         CALL join (2104)
000002215    118                     PUSH_REG 0
000002216    118               PUSH_LOCAL_PTR -96
000002217    118                 SWAP; ASSIGN str 8
000002218    119                         PUSH int 0
000002219    119                         PUSH ^ (nil)
000002220    119                         PUSH ^ 0x557ddba4fbb0
000002221    119                   PUSH_LOCAL str -96
000002222    119                         PUSH ^ 0x557ddb9a9010
000002223    119                 CALL_BUILTIN str printf
000002224    119                          POP 2
000002225    119                         PUSH int 0
000002226    119                         PUSH ^ 0x557ddb99e100
000002227    119                 CALL_BUILTIN void printf
000002228    119                          POP 5
000002229    120                         PUSH int 0
000002230    120                         PUSH ^ (nil)
000002231    120                         PUSH ^ 0x557ddba4fc00
000002232    120                    PUSH_ZERO 2
000002233    120                   PUSH_LOCAL str -96
000002234    120               CHANGE_REF_CNT ++ str
000002235    120                         CALL dir (1921)
000002236    120                     PUSH_REG 0
000002237    120                          DUP
000002238    120               PUSH_LOCAL_PTR -104
000002239    120                 SWAP; ASSIGN str 8
000002240    120                         PUSH ^ 0x557ddb9a9010
000002241    120                 CALL_BUILTIN str printf
000002242    120                          POP 2
000002243    120                         PUSH int 0
000002244    120                         PUSH ^ 0x557ddb99e100
000002245    120                 CALL_BUILTIN void printf
000002246    120                          POP 5
000002247    121                         PUSH int 0
000002248    121                         PUSH ^ (nil)
000002249    121                         PUSH ^ 0x557ddba4fc50
000002250    121                    PUSH_ZERO 2
000002251    121                   PUSH_LOCAL str -96
000002252    121               CHANGE_REF_CNT ++ str
000002253    121                         CALL file (1974)
000002254    121                     PUSH_REG 0
000002255    121                          DUP
000002256    121               PUSH_LOCAL_PTR -112
000002257    121                 SWAP; ASSIGN str 8
000002258    121                         PUSH ^ 0x557ddb9a9010
000002259    121                 CALL_BUILTIN str printf
000002260    121                          POP 2
000002261    121                         PUSH int 0
000002262    121                         PUSH ^ 0x557ddb99e100
000002263    121                 CALL_BUILTIN void printf
000002264    121                          POP 5
000002265    122                         PUSH int 0
000002266    122                         PUSH ^ (nil)
000002267    122                         PUSH ^ 0x557ddba58e20
000002268    122                    PUSH_ZERO 2
000002269    122                   PUSH_LOCAL str -96
000002270    122               CHANGE_REF_CNT ++ str
000002271    122                         CALL ext (2019)
000002272    122                     PUSH_REG 0
000002273    122                          DUP
000002274    122               PUSH_LOCAL_PTR -120
000002275    122                 SWAP; ASSIGN str 8
000002276    122                         PUSH ^ 0x557ddb9a9010
000002277    122                 CALL_BUILTIN str printf
000002278    122                          POP 2
000002279    122                         PUSH int 0
000002280    122                         PUSH ^ 0x557ddb99e100
000002281    122                 CALL_BUILTIN void printf
000002282    122                          POP 5
000002283    123                         PUSH int 0
000002284    123                         PUSH ^ (nil)
000002285    123                         PUSH ^ 0x557ddba5a020
000002286    123                    PUSH_ZERO 2
000002287    123                   PUSH_LOCAL str -96
000002288    123               CHANGE_REF_CNT ++ str
000002289    123                         CALL fromslash (2054)
000002290    123                     PUSH_REG 0
000002291    123                          DUP
000002292    123               PUSH_LOCAL_PTR -128
000002293    123                 SWAP; ASSIGN str 8
000002294    123                         PUSH ^ 0x557ddb9a9010
000002295    123                 CALL_BUILTIN str printf
000002296    123                          POP 2
000002297    123                         PUSH int 0
000002298    123                         PUSH ^ 0x557ddb99e100
000002299    123                 CALL_BUILTIN void printf
000002300    123                          POP 5
000002301    124                         PUSH int 0
000002302    124                         PUSH ^ (nil)
000002303    124                         PUSH ^ 0x557ddba5b220
000002304    124                    PUSH_ZERO 2
000002305    124                   PUSH_LOCAL str -96
000002306    124               CHANGE_REF_CNT ++ str
000002307    124                         CALL toslash (2079)
000002308    124                     PUSH_REG 0
000002309    124                          DUP
000002310    124               PUSH_LOCAL_PTR -136
000002311    124                 SWAP; ASSIGN str 8
000002312    124                         PUSH ^ 0x557ddb9a9010
000002313    124                 CALL_BUILTIN str printf
000002314    124                          POP 2
000002315    124                         PUSH int 0
000002316    124                         PUSH ^ 0x557ddb99e100
000002317    124                 CALL_BUILTIN void printf
000002318    124                          POP 5
000002319    125                   PUSH_LOCAL interface 16
000002320    125               CHANGE_REF_CNT -- interface; POP
000002321    125                   PUSH_LOCAL [...] -32
000002322    125               CHANGE_REF_CNT -- [3]str; POP
000002323    125                   PUSH_LOCAL str -96
000002324    125               CHANGE_REF_CNT -- str; POP
000002325    125                   PUSH_LOCAL str -104
000002326    125               CHANGE_REF_CNT -- str; POP
000002327    125                   PUSH_LOCAL str -112
000002328    125               CHANGE_REF_CNT -- str; POP
000002329    125                   PUSH_LOCAL str -120
000002330    125               CHANGE_REF_CNT -- str; POP
000002331    125                   PUSH_LOCAL str -128
000002332    125               CHANGE_REF_CNT -- str; POP
000002333    125                   PUSH_LOCAL str -136
000002334    125               CHANGE_REF_CNT -- str; POP
000002335    125                  LEAVE_FRAME
000002336    125                       RETURN 2


Module: /home/marek/dev/umlibs/tar/pak/os/pak/strings/strings.um


Function: contains

000002337     15                  ENTER_FRAME 2
000002338      6                         PUSH int 0
000002339      6               PUSH_LOCAL_PTR -16
000002340      6                 SWAP; ASSIGN int 8
000002341      6                   PUSH_LOCAL int -16
000002342      6                   PUSH_LOCAL str 24
000002343      6                 CALL_BUILTIN str len
000002344      6                       BINARY < int 8
000002345      6                      GOTO_IF 2350

000002346     12                         GOTO 2402

000002347      6               PUSH_LOCAL_PTR -16
000002348      6                        UNARY ++ int
000002349      6                         GOTO 2341

000002350      7                         PUSH int 0
000002351      7               PUSH_LOCAL_PTR -24
000002352      7                 SWAP; ASSIGN int 8
000002353      7                   PUSH_LOCAL int -16
000002354      7                   PUSH_LOCAL int -24
000002355      7                       BINARY + int 8
000002356      7                   PUSH_LOCAL str 24
000002357      7                 CALL_BUILTIN str len
000002358      7                       BINARY < int 8
000002359      7                          DUP
000002360      7                      POP_REG 2
000002361      7                      GOTO_IF 2363

000002362      7                         GOTO 2373

000002363      7                   PUSH_LOCAL str 24
000002364      7                   PUSH_LOCAL int -16
000002365      7                   PUSH_LOCAL int -24
000002366      7                       BINARY + int 8
000002367      7                GET_ARRAY_PTR char 1 -1; DEREF
000002368      7                   PUSH_LOCAL str 16
000002369      7                   PUSH_LOCAL int -24
000002370      7                GET_ARRAY_PTR char 1 -1; DEREF
000002371      7                       BINARY == char 1
000002372      7                      POP_REG 2
000002373      7                     PUSH_REG 2
000002374      7                          DUP
000002375      7                      POP_REG 2
000002376      7                      GOTO_IF 2378

000002377      7                         GOTO 2383

000002378      7                   PUSH_LOCAL int -24
000002379      7                   PUSH_LOCAL str 16
000002380      7                 CALL_BUILTIN str len
000002381      7                       BINARY < int 8
000002382      7                      POP_REG 2
000002383      7                     PUSH_REG 2
000002384      7                      GOTO_IF 2389

000002385     11                         GOTO 2401

000002386      7               PUSH_LOCAL_PTR -24
000002387      7                        UNARY ++ int
000002388      7                         GOTO 2353

000002389      8                   PUSH_LOCAL int -24
000002390      8                   PUSH_LOCAL str 16
000002391      8                 CALL_BUILTIN str len
000002392      8                         PUSH int 1
000002393      8                       BINARY - int 8
000002394      8                       BINARY == int 8
000002395      8                      GOTO_IF 2397

000002396     10                         GOTO 2400

000002397      9                         PUSH int 1
000002398      9                      POP_REG 0
000002399     15                         GOTO 2405

000002400     11                         GOTO 2386

000002401     12                         GOTO 2347

000002402     14                         PUSH int 0
000002403     14                      POP_REG 0
000002404     15                         GOTO 2405

000002405     15                   PUSH_LOCAL interface 32
000002406     15               CHANGE_REF_CNT -- interface; POP
000002407     15                   PUSH_LOCAL str 24
000002408     15               CHANGE_REF_CNT -- str; POP
000002409     15                   PUSH_LOCAL str 16
000002410     15               CHANGE_REF_CNT -- str; POP
000002411     15                  LEAVE_FRAME
000002412     15                       RETURN 4


Function: join

000002413     31                  ENTER_FRAME 4
000002414     21                         PUSH ^ 0x557ddba5b1c0
000002415     21               CHANGE_REF_CNT ++ str
000002416     21               PUSH_LOCAL_PTR -16
000002417     21                 SWAP; ASSIGN str 8
000002418     23                         PUSH int 0
000002419     23               PUSH_LOCAL_PTR -24
000002420     23                 SWAP; ASSIGN int 8
000002421     23                   PUSH_LOCAL int -24
000002422     23               PUSH_LOCAL_PTR 24
000002423     23                 CALL_BUILTIN [] len
000002424     23                       BINARY < int 8
000002425     23                      GOTO_IF 2430

000002426     28                         GOTO 2463

000002427     23               PUSH_LOCAL_PTR -24
000002428     23                        UNARY ++ int
000002429     23                         GOTO 2421

000002430     24               PUSH_LOCAL_PTR -16
000002431     24                          DUP
000002432     24                        DEREF str
000002433     24               PUSH_LOCAL_PTR 24
000002434     24                   PUSH_LOCAL int -24
000002435     24             GET_DYNARRAY_PTR str; DEREF
000002436     24                       BINARY += str 0
000002437     24                          DUP
000002438     24               PUSH_LOCAL_PTR -32
000002439     24                 SWAP; ASSIGN str 8
000002440     24        CHANGE_REF_CNT_ASSIGN str
000002441     25                   PUSH_LOCAL int -24
000002442     25               PUSH_LOCAL_PTR 24
000002443     25                 CALL_BUILTIN [] len
000002444     25                         PUSH int 1
000002445     25                       BINARY - int 8
000002446     25                       BINARY != int 8
000002447     25                      GOTO_IF 2449

000002448     27                         GOTO 2460

000002449     26               PUSH_LOCAL_PTR -16
000002450     26                          DUP
000002451     26                        DEREF str
000002452     26                   PUSH_LOCAL str 16
000002453     26                       BINARY += str 0
000002454     26                          DUP
000002455     26               PUSH_LOCAL_PTR -40
000002456     26                 SWAP; ASSIGN str 8
000002457     26        CHANGE_REF_CNT_ASSIGN str
000002458     27                   PUSH_LOCAL str -40
000002459     27               CHANGE_REF_CNT -- str; POP
000002460     28                   PUSH_LOCAL str -32
000002461     28               CHANGE_REF_CNT -- str; POP
000002462     28                         GOTO 2427

000002463     30                   PUSH_LOCAL str -16
000002464     30               CHANGE_REF_CNT ++ str
000002465     30                      POP_REG 0
000002466     31                         GOTO 2467

000002467     31                   PUSH_LOCAL interface 48
000002468     31               CHANGE_REF_CNT -- interface; POP
000002469     31                   PUSH_LOCAL [] 24
000002470     31               CHANGE_REF_CNT -- []str; POP
000002471     31                   PUSH_LOCAL str 16
000002472     31               CHANGE_REF_CNT -- str; POP
000002473     31                   PUSH_LOCAL str -16
000002474     31               CHANGE_REF_CNT -- str; POP
000002475     31                  LEAVE_FRAME
000002476     31                       RETURN 6


Function: _has_prefix

000002477     42                  ENTER_FRAME 1
000002478     34                   PUSH_LOCAL int 24
000002479     34                   PUSH_LOCAL int 32
000002480     34                       BINARY - int 8
000002481     34                   PUSH_LOCAL int 16
000002482     34                       BINARY < int 8
000002483     34                      GOTO_IF 2485

000002484     34                         GOTO 2488

000002485     34                         PUSH int 0
000002486     34                      POP_REG 0
000002487     42                         GOTO 2517

000002488     36                         PUSH int 0
000002489     36               PUSH_LOCAL_PTR -16
000002490     36                 SWAP; ASSIGN int 8
000002491     36                   PUSH_LOCAL int -16
000002492     36                   PUSH_LOCAL int 16
000002493     36                       BINARY < int 8
000002494     36                      GOTO_IF 2499

000002495     39                         GOTO 2514

000002496     36               PUSH_LOCAL_PTR -16
000002497     36                        UNARY ++ int
000002498     36                         GOTO 2491

000002499     37                   PUSH_LOCAL str 48
000002500     37                   PUSH_LOCAL int 32
000002501     37                GET_ARRAY_PTR char 1 -1; DEREF
000002502     37                   PUSH_LOCAL str 40
000002503     37                   PUSH_LOCAL int -16
000002504     37                GET_ARRAY_PTR char 1 -1; DEREF
000002505     37                       BINARY != char 1
000002506     37                      GOTO_IF 2508

000002507     37                         GOTO 2511

000002508     37                         PUSH int 0
000002509     37                      POP_REG 0
000002510     42                         GOTO 2517

000002511     38               PUSH_LOCAL_PTR 32
000002512     38                        UNARY ++ int
000002513     39                         GOTO 2496

000002514     41                         PUSH int 1
000002515     41                      POP_REG 0
000002516     42                         GOTO 2517

000002517     42                   PUSH_LOCAL interface 56
000002518     42               CHANGE_REF_CNT -- interface; POP
000002519     42                   PUSH_LOCAL str 48
000002520     42               CHANGE_REF_CNT -- str; POP
000002521     42                   PUSH_LOCAL str 40
000002522     42               CHANGE_REF_CNT -- str; POP
000002523     42                  LEAVE_FRAME
000002524     42                       RETURN 7


Function: has_prefix

000002525     49                  ENTER_FRAME 0
000002526     48                    PUSH_ZERO 2
000002527     48                   PUSH_LOCAL str 24
000002528     48               CHANGE_REF_CNT ++ str
000002529     48                   PUSH_LOCAL str 16
000002530     48               CHANGE_REF_CNT ++ str
000002531     48                         PUSH int 0
000002532     48                   PUSH_LOCAL str 24
000002533     48                 CALL_BUILTIN str len
000002534     48                   PUSH_LOCAL str 16
000002535     48                 CALL_BUILTIN str len
000002536     48                         CALL _has_prefix (2477)
000002537     48                     PUSH_REG 0
000002538     48                      POP_REG 0
000002539     49                         GOTO 2540

000002540     49                   PUSH_LOCAL interface 32
000002541     49               CHANGE_REF_CNT -- interface; POP
000002542     49                   PUSH_LOCAL str 24
000002543     49               CHANGE_REF_CNT -- str; POP
000002544     49                   PUSH_LOCAL str 16
000002545     49               CHANGE_REF_CNT -- str; POP
000002546     49                  LEAVE_FRAME
000002547     49                       RETURN 4


Function: split

000002548     72                  ENTER_FRAME 29
000002549     55               PUSH_LOCAL_PTR -8
000002550     55                         ZERO 0
000002551     55               PUSH_LOCAL_PTR -8
000002552     55                         PUSH ^ 0x557ddbb048b0
000002553     55                         PUSH int 0
000002554     55               PUSH_LOCAL_PTR -32
000002555     55                 CALL_BUILTIN [] makefromarr
000002556     55               PUSH_LOCAL_PTR -80
000002557     55                 SWAP; ASSIGN [] 24
000002558     56                         PUSH int 0
000002559     56               PUSH_LOCAL_PTR -88
000002560     56                 SWAP; ASSIGN int 8
000002561     58                   PUSH_LOCAL str 24
000002562     58                 CALL_BUILTIN str len
000002563     58               PUSH_LOCAL_PTR -96
000002564     58                 SWAP; ASSIGN int 8
000002565     59                   PUSH_LOCAL str 32
000002566     59                 CALL_BUILTIN str len
000002567     59               PUSH_LOCAL_PTR -104
000002568     59                 SWAP; ASSIGN int 8
000002569     61                         PUSH int 0
000002570     61               PUSH_LOCAL_PTR -112
000002571     61                 SWAP; ASSIGN int 8
000002572     61                   PUSH_LOCAL int -112
000002573     61                   PUSH_LOCAL int -104
000002574     61                       BINARY < int 8
000002575     61                      GOTO_IF 2580

000002576     67                         GOTO 2627

000002577     61               PUSH_LOCAL_PTR -112
000002578     61                        UNARY ++ int
000002579     61                         GOTO 2572

000002580     62                    PUSH_ZERO 2
000002581     62                   PUSH_LOCAL str 32
000002582     62               CHANGE_REF_CNT ++ str
000002583     62                   PUSH_LOCAL str 24
000002584     62               CHANGE_REF_CNT ++ str
000002585     62                   PUSH_LOCAL int -112
000002586     62                   PUSH_LOCAL int -104
000002587     62                   PUSH_LOCAL int -96
000002588     62                         CALL _has_prefix (2477)
000002589     62                     PUSH_REG 0
000002590     62                      GOTO_IF 2592

000002591     66                         GOTO 2626

000002592     63               PUSH_LOCAL_PTR -80
000002593     63               PUSH_LOCAL_PTR -80
000002594     63                   PUSH_LOCAL str 32
000002595     63                   PUSH_LOCAL int -88
000002596     63                   PUSH_LOCAL int -112
000002597     63                         PUSH ^ 0x557ddb9a9010
000002598     63                         PUSH ^ (nil)
000002599     63                 CALL_BUILTIN [] slice
000002600     63                          DUP
000002601     63               PUSH_LOCAL_PTR -120
000002602     63                 SWAP; ASSIGN str 8
000002603     63               PUSH_LOCAL_PTR -128
000002604     63                 SWAP; ASSIGN str 0
000002605     63               PUSH_LOCAL_PTR -128
000002606     63                         PUSH int 1
000002607     63                         PUSH ^ 0x557ddbb048b0
000002608     63               PUSH_LOCAL_PTR -152
000002609     63                 CALL_BUILTIN [] append
000002610     63        CHANGE_REF_CNT_ASSIGN -- []str
000002611     64               PUSH_LOCAL_PTR -112
000002612     64                          DUP
000002613     64                        DEREF int
000002614     64                   PUSH_LOCAL int -96
000002615     64                         PUSH int 1
000002616     64                       BINARY - int 8
000002617     64                       BINARY + int 8
000002618     64                       ASSIGN int 8
000002619     65               PUSH_LOCAL_PTR -88
000002620     65                   PUSH_LOCAL int -112
000002621     65                         PUSH int 1
000002622     65                       BINARY + int 8
000002623     65                       ASSIGN int 8
000002624     66                   PUSH_LOCAL str -120
000002625     66               CHANGE_REF_CNT -- str; POP
000002626     67                         GOTO 2577

000002627     69               PUSH_LOCAL_PTR -80
000002628     69               PUSH_LOCAL_PTR -80
000002629     69                   PUSH_LOCAL str 32
000002630     69                   PUSH_LOCAL int -88
000002631     69                         PUSH int -2147483648
000002632     69                         PUSH ^ 0x557ddb9a9010
000002633     69                         PUSH ^ (nil)
000002634     69                 CALL_BUILTIN [] slice
000002635     69                          DUP
000002636     69               PUSH_LOCAL_PTR -184
000002637     69                 SWAP; ASSIGN str 8
000002638     69               PUSH_LOCAL_PTR -192
000002639     69                 SWAP; ASSIGN str 0
000002640     69               PUSH_LOCAL_PTR -192
000002641     69                         PUSH int 1
000002642     69                         PUSH ^ 0x557ddbb048b0
000002643     69               PUSH_LOCAL_PTR -216
000002644     69                 CALL_BUILTIN [] append
000002645     69        CHANGE_REF_CNT_ASSIGN -- []str
000002646     71               PUSH_LOCAL_PTR -80
000002647     71                   PUSH_LOCAL ^ 16
000002648     71                 SWAP; ASSIGN [] 24
000002649     71                   PUSH_LOCAL ^ 16
000002650     71               CHANGE_REF_CNT ++ []str
000002651     71                      POP_REG 0
000002652     72                         GOTO 2653

000002653     72                   PUSH_LOCAL interface 40
000002654     72               CHANGE_REF_CNT -- interface; POP
000002655     72                   PUSH_LOCAL str 32
000002656     72               CHANGE_REF_CNT -- str; POP
000002657     72                   PUSH_LOCAL str 24
000002658     72               CHANGE_REF_CNT -- str; POP
000002659     72                   PUSH_LOCAL [...] -8
000002660     72               CHANGE_REF_CNT -- [0]str; POP
000002661     72                   PUSH_LOCAL [] -80
000002662     72               CHANGE_REF_CNT -- []str; POP
000002663     72                   PUSH_LOCAL str -184
000002664     72               CHANGE_REF_CNT -- str; POP
000002665     72                  LEAVE_FRAME
000002666     72                       RETURN 5


Function: replace

000002667     79                  ENTER_FRAME 7
000002668     78                    PUSH_ZERO 4
000002669     78                   PUSH_LOCAL str 32
000002670     78               CHANGE_REF_CNT ++ str
000002671     78                   PUSH_LOCAL str 24
000002672     78               CHANGE_REF_CNT ++ str
000002673     78               PUSH_LOCAL_PTR -32
000002674     78                         CALL split (2548)
000002675     78                     PUSH_REG 0
000002676     78                  PUSH_STRUCT 24
000002677     78                   PUSH_LOCAL str 16
000002678     78               CHANGE_REF_CNT ++ str
000002679     78                         CALL join (2413)
000002680     78                     PUSH_REG 0
000002681     78                      POP_REG 0
000002682     79                         GOTO 2683

000002683     79                   PUSH_LOCAL interface 40
000002684     79               CHANGE_REF_CNT -- interface; POP
000002685     79                   PUSH_LOCAL str 32
000002686     79               CHANGE_REF_CNT -- str; POP
000002687     79                   PUSH_LOCAL str 24
000002688     79               CHANGE_REF_CNT -- str; POP
000002689     79                   PUSH_LOCAL str 16
000002690     79               CHANGE_REF_CNT -- str; POP
000002691     79                  LEAVE_FRAME
000002692     79                       RETURN 5


Function: chartoupper

000002693     87                  ENTER_FRAME 0
000002694     82                   PUSH_LOCAL char 16
000002695     82                 ASSERT_RANGE int
000002696     82                         PUSH int 97
000002697     82                 ASSERT_RANGE int
000002698     82                       BINARY >= int 8
000002699     82                          DUP
000002700     82                      POP_REG 2
000002701     82                      GOTO_IF 2703

000002702     82                         GOTO 2709

000002703     82                   PUSH_LOCAL char 16
000002704     82                 ASSERT_RANGE int
000002705     82                         PUSH int 122
000002706     82                 ASSERT_RANGE int
000002707     82                       BINARY <= int 8
000002708     82                      POP_REG 2
000002709     82                     PUSH_REG 2
000002710     82                      GOTO_IF 2712

000002711     84                         GOTO 2719

000002712     83                   PUSH_LOCAL char 16
000002713     83                 ASSERT_RANGE int
000002714     83                         PUSH int 32
000002715     83                       BINARY - int 8
000002716     83                 ASSERT_RANGE char
000002717     83                      POP_REG 0
000002718     87                         GOTO 2722

000002719     86                   PUSH_LOCAL char 16
000002720     86                      POP_REG 0
000002721     87                         GOTO 2722

000002722     87                   PUSH_LOCAL interface 24
000002723     87               CHANGE_REF_CNT -- interface; POP
000002724     87                  LEAVE_FRAME
000002725     87                       RETURN 3


Function: toupper

000002726    101                  ENTER_FRAME 12
000002727     93                   PUSH_LOCAL str 16
000002728     93                 CALL_BUILTIN str len
000002729     93               PUSH_LOCAL_PTR -16
000002730     93                 SWAP; ASSIGN int 8
000002731     94                         PUSH ^ 0x557ddbb15b70
000002732     94                   PUSH_LOCAL int -16
000002733     94               PUSH_LOCAL_PTR -40
000002734     94                 CALL_BUILTIN [] make
000002735     94               PUSH_LOCAL_PTR -88
000002736     94                 SWAP; ASSIGN [] 24
000002737     96                         PUSH int 0
000002738     96               PUSH_LOCAL_PTR -96
000002739     96                 SWAP; ASSIGN int 8
000002740     96                   PUSH_LOCAL int -96
000002741     96                   PUSH_LOCAL int -16
000002742     96                       BINARY < int 8
000002743     96                      GOTO_IF 2748

000002744     98                         GOTO 2761

000002745     96               PUSH_LOCAL_PTR -96
000002746     96                        UNARY ++ int
000002747     96                         GOTO 2740

000002748     97               PUSH_LOCAL_PTR -88
000002749     97                   PUSH_LOCAL int -96
000002750     97             GET_DYNARRAY_PTR
000002751     97                    PUSH_ZERO 2
000002752     97                   PUSH_LOCAL str 16
000002753     97                   PUSH_LOCAL int -96
000002754     97                GET_ARRAY_PTR char 1 -1; DEREF
000002755     97                 ASSERT_RANGE char
000002756     97                 CALL_BUILTIN char narrow
000002757     97                         CALL chartoupper (2693)
000002758     97                     PUSH_REG 0
000002759     97                       ASSIGN char 1
000002760     98                         GOTO 2745

000002761    100               PUSH_LOCAL_PTR -88
000002762    100                 CALL_BUILTIN [] maketostr
000002763    100                      POP_REG 0
000002764    101                         GOTO 2765

000002765    101                   PUSH_LOCAL interface 24
000002766    101               CHANGE_REF_CNT -- interface; POP
000002767    101                   PUSH_LOCAL str 16
000002768    101               CHANGE_REF_CNT -- str; POP
000002769    101                   PUSH_LOCAL [] -88
000002770    101               CHANGE_REF_CNT -- []char; POP
000002771    101                  LEAVE_FRAME
000002772    101                       RETURN 3


Function: chartolower

000002773    109                  ENTER_FRAME 0
000002774    104                   PUSH_LOCAL char 16
000002775    104                 ASSERT_RANGE int
000002776    104                         PUSH int 63
000002777    104                       BINARY >= int 8
000002778    104                          DUP
000002779    104                      POP_REG 2
000002780    104                      GOTO_IF 2782

000002781    104                         GOTO 2787

000002782    104                   PUSH_LOCAL char 16
000002783    104                 ASSERT_RANGE int
000002784    104                         PUSH int 90
000002785    104                       BINARY <= int 8
000002786    104                      POP_REG 2
000002787    104                     PUSH_REG 2
000002788    104                      GOTO_IF 2790

000002789    106                         GOTO 2797

000002790    105                   PUSH_LOCAL char 16
000002791    105                 ASSERT_RANGE int
000002792    105                         PUSH int 32
000002793    105                       BINARY + int 8
000002794    105                 ASSERT_RANGE char
000002795    105                      POP_REG 0
000002796    109                         GOTO 2800

000002797    108                   PUSH_LOCAL char 16
000002798    108                      POP_REG 0
000002799    109                         GOTO 2800

000002800    109                   PUSH_LOCAL interface 24
000002801    109               CHANGE_REF_CNT -- interface; POP
000002802    109                  LEAVE_FRAME
000002803    109                       RETURN 3


Function: tolower

000002804    123                  ENTER_FRAME 12
000002805    115                   PUSH_LOCAL str 16
000002806    115                 CALL_BUILTIN str len
000002807    115               PUSH_LOCAL_PTR -16
000002808    115                 SWAP; ASSIGN int 8
000002809    116                         PUSH ^ 0x557ddbb1e6e0
000002810    116                   PUSH_LOCAL int -16
000002811    116               PUSH_LOCAL_PTR -40
000002812    116                 CALL_BUILTIN [] make
000002813    116               PUSH_LOCAL_PTR -88
000002814    116                 SWAP; ASSIGN [] 24
000002815    118                         PUSH int 0
000002816    118               PUSH_LOCAL_PTR -96
000002817    118                 SWAP; ASSIGN int 8
000002818    118                   PUSH_LOCAL int -96
000002819    118                   PUSH_LOCAL int -16
000002820    118                       BINARY < int 8
000002821    118                      GOTO_IF 2826

000002822    120                         GOTO 2839

000002823    118               PUSH_LOCAL_PTR -96
000002824    118                        UNARY ++ int
000002825    118                         GOTO 2818

000002826    119               PUSH_LOCAL_PTR -88
000002827    119                   PUSH_LOCAL int -96
000002828    119             GET_DYNARRAY_PTR
000002829    119                    PUSH_ZERO 2
000002830    119                   PUSH_LOCAL str 16
000002831    119                   PUSH_LOCAL int -96
000002832    119                GET_ARRAY_PTR char 1 -1; DEREF
000002833    119                 ASSERT_RANGE char
000002834    119                 CALL_BUILTIN char narrow
000002835    119                         CALL chartolower (2773)
000002836    119                     PUSH_REG 0
000002837    119                       ASSIGN char 1
000002838    120                         GOTO 2823

000002839    122               PUSH_LOCAL_PTR -88
000002840    122                 CALL_BUILTIN [] maketostr
000002841    122                      POP_REG 0
000002842    123                         GOTO 2843

000002843    123                   PUSH_LOCAL interface 24
000002844    123               CHANGE_REF_CNT -- interface; POP
000002845    123                   PUSH_LOCAL str 16
000002846    123               CHANGE_REF_CNT -- str; POP
000002847    123                   PUSH_LOCAL [] -88
000002848    123               CHANGE_REF_CNT -- []char; POP
000002849    123                  LEAVE_FRAME
000002850    123                       RETURN 3


Function: repeat

000002851    132                  ENTER_FRAME 3
000002852    129                         PUSH ^ 0x557ddbb05ce0
000002853    129               CHANGE_REF_CNT ++ str
000002854    129               PUSH_LOCAL_PTR -16
000002855    129                 SWAP; ASSIGN str 8
000002856    130                         PUSH int 0
000002857    130               PUSH_LOCAL_PTR -24
000002858    130                 SWAP; ASSIGN int 8
000002859    130                   PUSH_LOCAL int -24
000002860    130                   PUSH_LOCAL int 16
000002861    130                       BINARY < int 8
000002862    130                      GOTO_IF 2867

000002863    130                         GOTO 2879

000002864    130               PUSH_LOCAL_PTR -24
000002865    130                        UNARY ++ int
000002866    130                         GOTO 2859

000002867    130               PUSH_LOCAL_PTR -16
000002868    130                          DUP
000002869    130                        DEREF str
000002870    130                   PUSH_LOCAL str 24
000002871    130                       BINARY += str 0
000002872    130                          DUP
000002873    130               PUSH_LOCAL_PTR -32
000002874    130                 SWAP; ASSIGN str 8
000002875    130        CHANGE_REF_CNT_ASSIGN str
000002876    130                   PUSH_LOCAL str -32
000002877    130               CHANGE_REF_CNT -- str; POP
000002878    130                         GOTO 2864

000002879    131                   PUSH_LOCAL str -16
000002880    131               CHANGE_REF_CNT ++ str
000002881    131                      POP_REG 0
000002882    132                         GOTO 2883

000002883    132                   PUSH_LOCAL interface 32
000002884    132               CHANGE_REF_CNT -- interface; POP
000002885    132                   PUSH_LOCAL str 24
000002886    132               CHANGE_REF_CNT -- str; POP
000002887    132                   PUSH_LOCAL str -16
000002888    132               CHANGE_REF_CNT -- str; POP
000002889    132                  LEAVE_FRAME
000002890    132                       RETURN 4


Function: trimspaces

000002891    162                  ENTER_FRAME 3
000002892    138                   PUSH_LOCAL str 16
000002893    138                 CALL_BUILTIN str len
000002894    138                         PUSH int 0
000002895    138                       BINARY == int 8
000002896    138                      GOTO_IF 2898

000002897    140                         GOTO 2902

000002898    139                         PUSH ^ 0x557ddbb07100
000002899    139               CHANGE_REF_CNT ++ str
000002900    139                      POP_REG 0
000002901    162                         GOTO 2983

000002902    142               PUSH_LOCAL_PTR -16
000002903    142                         ZERO 8
000002904    142               PUSH_LOCAL_PTR -24
000002905    142                         ZERO 8
000002906    144                   PUSH_LOCAL int -16
000002907    144                   PUSH_LOCAL str 16
000002908    144                 CALL_BUILTIN str len
000002909    144                       BINARY < int 8
000002910    144                          DUP
000002911    144                      POP_REG 2
000002912    144                      GOTO_IF 2914

000002913    144                         GOTO 2920

000002914    144                   PUSH_LOCAL str 16
000002915    144                   PUSH_LOCAL int -16
000002916    144                GET_ARRAY_PTR char 1 -1; DEREF
000002917    144                         PUSH int 32
000002918    144                       BINARY == char 1
000002919    144                      POP_REG 2
000002920    144                     PUSH_REG 2
000002921    144                      GOTO_IF 2924

000002922    146                         GOTO 2927

000002923    144                         GOTO 2906

000002924    145               PUSH_LOCAL_PTR -16
000002925    145                        UNARY ++ int
000002926    146                         GOTO 2923

000002927    148                   PUSH_LOCAL int -16
000002928    148                   PUSH_LOCAL str 16
000002929    148                 CALL_BUILTIN str len
000002930    148                       BINARY >= int 8
000002931    148                      GOTO_IF 2933

000002932    150                         GOTO 2937

000002933    149                         PUSH ^ 0x557ddbb07140
000002934    149               CHANGE_REF_CNT ++ str
000002935    149                      POP_REG 0
000002936    162                         GOTO 2983

000002937    152               PUSH_LOCAL_PTR -24
000002938    152                   PUSH_LOCAL str 16
000002939    152                 CALL_BUILTIN str len
000002940    152                         PUSH int 1
000002941    152                       BINARY - int 8
000002942    152                       ASSIGN int 8
000002943    153                   PUSH_LOCAL int -24
000002944    153                         PUSH int 0
000002945    153                       BINARY >= int 8
000002946    153                          DUP
000002947    153                      POP_REG 2
000002948    153                      GOTO_IF 2950

000002949    153                         GOTO 2956

000002950    153                   PUSH_LOCAL str 16
000002951    153                   PUSH_LOCAL int -24
000002952    153                GET_ARRAY_PTR char 1 -1; DEREF
000002953    153                         PUSH int 32
000002954    153                       BINARY == char 1
000002955    153                      POP_REG 2
000002956    153                     PUSH_REG 2
000002957    153                      GOTO_IF 2960

000002958    155                         GOTO 2963

000002959    153                         GOTO 2943

000002960    154               PUSH_LOCAL_PTR -24
000002961    154                        UNARY -- int
000002962    155                         GOTO 2959

000002963    157                   PUSH_LOCAL int -24
000002964    157                   PUSH_LOCAL str 16
000002965    157                 CALL_BUILTIN str len
000002966    157                       BINARY > int 8
000002967    157                      GOTO_IF 2969

000002968    159                         GOTO 2973

000002969    158               PUSH_LOCAL_PTR -24
000002970    158                   PUSH_LOCAL str 16
000002971    158                 CALL_BUILTIN str len
000002972    158                       ASSIGN int 8
000002973    161                   PUSH_LOCAL str 16
000002974    161                   PUSH_LOCAL int -16
000002975    161                   PUSH_LOCAL int -24
000002976    161                         PUSH int 1
000002977    161                       BINARY + int 8
000002978    161                         PUSH ^ 0x557ddb9a9010
000002979    161                         PUSH ^ (nil)
000002980    161                 CALL_BUILTIN [] slice
000002981    161                      POP_REG 0
000002982    162                         GOTO 2983

000002983    162                   PUSH_LOCAL interface 24
000002984    162               CHANGE_REF_CNT -- interface; POP
000002985    162                   PUSH_LOCAL str 16
000002986    162               CHANGE_REF_CNT -- str; POP
000002987    162                  LEAVE_FRAME
000002988    162                       RETURN 3


Function: trimprefix

000002989    179                  ENTER_FRAME 2
000002990    168                         PUSH int 0
000002991    168               PUSH_LOCAL_PTR -16
000002992    168                 SWAP; ASSIGN int 8
000002993    170                   PUSH_LOCAL int -16
000002994    170                   PUSH_LOCAL str 16
000002995    170                 CALL_BUILTIN str len
000002996    170                       BINARY < int 8
000002997    170                          DUP
000002998    170                      POP_REG 2
000002999    170                      GOTO_IF 3001

000003000    170                         GOTO 3006

000003001    170                   PUSH_LOCAL int -16
000003002    170                   PUSH_LOCAL str 24
000003003    170                 CALL_BUILTIN str len
000003004    170                       BINARY < int 8
000003005    170                      POP_REG 2
000003006    170                     PUSH_REG 2
000003007    170                          DUP
000003008    170                      POP_REG 2
000003009    170                      GOTO_IF 3011

000003010    170                         GOTO 3019

000003011    170                   PUSH_LOCAL str 24
000003012    170                   PUSH_LOCAL int -16
000003013    170                GET_ARRAY_PTR char 1 -1; DEREF
000003014    170                   PUSH_LOCAL str 16
000003015    170                   PUSH_LOCAL int -16
000003016    170                GET_ARRAY_PTR char 1 -1; DEREF
000003017    170                       BINARY == char 1
000003018    170                      POP_REG 2
000003019    170                     PUSH_REG 2
000003020    170                      GOTO_IF 3023

000003021    172                         GOTO 3026

000003022    170                         GOTO 2993

000003023    171               PUSH_LOCAL_PTR -16
000003024    171                        UNARY ++ int
000003025    172                         GOTO 3022

000003026    174                   PUSH_LOCAL int -16
000003027    174                   PUSH_LOCAL str 16
000003028    174                 CALL_BUILTIN str len
000003029    174                       BINARY != int 8
000003030    174                      GOTO_IF 3032

000003031    176                         GOTO 3036

000003032    175                   PUSH_LOCAL str 24
000003033    175               CHANGE_REF_CNT ++ str
000003034    175                      POP_REG 0
000003035    179                         GOTO 3045

000003036    178                   PUSH_LOCAL str 24
000003037    178                   PUSH_LOCAL int -16
000003038    178                   PUSH_LOCAL str 24
000003039    178                 CALL_BUILTIN str len
000003040    178                         PUSH ^ 0x557ddb9a9010
000003041    178                         PUSH ^ (nil)
000003042    178                 CALL_BUILTIN [] slice
000003043    178                      POP_REG 0
000003044    179                         GOTO 3045

000003045    179                   PUSH_LOCAL interface 32
000003046    179               CHANGE_REF_CNT -- interface; POP
000003047    179                   PUSH_LOCAL str 24
000003048    179               CHANGE_REF_CNT -- str; POP
000003049    179                   PUSH_LOCAL str 16
000003050    179               CHANGE_REF_CNT -- str; POP
000003051    179                  LEAVE_FRAME
000003052    179                       RETURN 4


Function: trimsuffix

000003053    196                  ENTER_FRAME 3
000003054    185                   PUSH_LOCAL str 24
000003055    185                 CALL_BUILTIN str len
000003056    185                         PUSH int 1
000003057    185                       BINARY - int 8
000003058    185               PUSH_LOCAL_PTR -16
000003059    185                 SWAP; ASSIGN int 8
000003060    187                   PUSH_LOCAL str 16
000003061    187                 CALL_BUILTIN str len
000003062    187                         PUSH int 1
000003063    187                       BINARY - int 8
000003064    187               PUSH_LOCAL_PTR -24
000003065    187                 SWAP; ASSIGN int 8
000003066    187                   PUSH_LOCAL int -24
000003067    187                         PUSH int 0
000003068    187                       BINARY >= int 8
000003069    187                          DUP
000003070    187                      POP_REG 2
000003071    187                      GOTO_IF 3073

000003072    187                         GOTO 3077

000003073    187                   PUSH_LOCAL int -16
000003074    187                         PUSH int 0
000003075    187                       BINARY >= int 8
000003076    187                      POP_REG 2
000003077    187                     PUSH_REG 2
000003078    187                          DUP
000003079    187                      POP_REG 2
000003080    187                      GOTO_IF 3082

000003081    187                         GOTO 3090

000003082    187                   PUSH_LOCAL str 24
000003083    187                   PUSH_LOCAL int -16
000003084    187                GET_ARRAY_PTR char 1 -1; DEREF
000003085    187                   PUSH_LOCAL str 16
000003086    187                   PUSH_LOCAL int -24
000003087    187                GET_ARRAY_PTR char 1 -1; DEREF
000003088    187                       BINARY == char 1
000003089    187                      POP_REG 2
000003090    187                     PUSH_REG 2
000003091    187                      GOTO_IF 3096

000003092    189                         GOTO 3099

000003093    187               PUSH_LOCAL_PTR -24
000003094    187                        UNARY -- int
000003095    187                         GOTO 3066

000003096    188               PUSH_LOCAL_PTR -16
000003097    188                        UNARY -- int
000003098    189                         GOTO 3093

000003099    191                   PUSH_LOCAL str 24
000003100    191                 CALL_BUILTIN str len
000003101    191                         PUSH int 1
000003102    191                       BINARY - int 8
000003103    191                   PUSH_LOCAL int -16
000003104    191                       BINARY - int 8
000003105    191                   PUSH_LOCAL str 16
000003106    191                 CALL_BUILTIN str len
000003107    191                       BINARY != int 8
000003108    191                      GOTO_IF 3110

000003109    193                         GOTO 3114

000003110    192                   PUSH_LOCAL str 24
000003111    192               CHANGE_REF_CNT ++ str
000003112    192                      POP_REG 0
000003113    196                         GOTO 3124

000003114    195                   PUSH_LOCAL str 24
000003115    195                         PUSH int 0
000003116    195                   PUSH_LOCAL int -16
000003117    195                         PUSH int 1
000003118    195                       BINARY + int 8
000003119    195                         PUSH ^ 0x557ddb9a9010
000003120    195                         PUSH ^ (nil)
000003121    195                 CALL_BUILTIN [] slice
000003122    195                      POP_REG 0
000003123    196                         GOTO 3124

000003124    196                   PUSH_LOCAL interface 32
000003125    196               CHANGE_REF_CNT -- interface; POP
000003126    196                   PUSH_LOCAL str 24
000003127    196               CHANGE_REF_CNT -- str; POP
000003128    196                   PUSH_LOCAL str 16
000003129    196               CHANGE_REF_CNT -- str; POP
000003130    196                  LEAVE_FRAME
000003131    196                       RETURN 4


Module: /home/marek/dev/umlibs/tar/pak/os/os.um

000003132    159                         GOTO 3708


Function: isfile

000003133     20                  ENTER_FRAME 0
000003134     19                    PUSH_ZERO 2
000003135     19                   PUSH_LOCAL str 16
000003136     19               CHANGE_REF_CNT ++ str
000003137     19                         CALL <unknown> (3132)
000003138     19                     PUSH_REG 0
000003139     19                      POP_REG 0
000003140     20                         GOTO 3141

000003141     20                   PUSH_LOCAL interface 24
000003142     20               CHANGE_REF_CNT -- interface; POP
000003143     20                   PUSH_LOCAL str 16
000003144     20               CHANGE_REF_CNT -- str; POP
000003145     20                  LEAVE_FRAME
000003146     20                       RETURN 3

000003147    159                         GOTO 3716


Function: isdir

000003148     30                  ENTER_FRAME 0
000003149     29                    PUSH_ZERO 2
000003150     29                   PUSH_LOCAL str 16
000003151     29               CHANGE_REF_CNT ++ str
000003152     29                         CALL <unknown> (3147)
000003153     29                     PUSH_REG 0
000003154     29                      POP_REG 0
000003155     30                         GOTO 3156

000003156     30                   PUSH_LOCAL interface 24
000003157     30               CHANGE_REF_CNT -- interface; POP
000003158     30                   PUSH_LOCAL str 16
000003159     30               CHANGE_REF_CNT -- str; POP
000003160     30                  LEAVE_FRAME
000003161     30                       RETURN 3

000003162    159                         GOTO 3724


Function: mkdir

000003163     39                  ENTER_FRAME 0
000003164     38                    PUSH_ZERO 2
000003165     38                   PUSH_LOCAL str 16
000003166     38               CHANGE_REF_CNT ++ str
000003167     38                         CALL <unknown> (3162)
000003168     38                     PUSH_REG 0
000003169     38                      POP_REG 0
000003170     39                         GOTO 3171

000003171     39                   PUSH_LOCAL interface 24
000003172     39               CHANGE_REF_CNT -- interface; POP
000003173     39                   PUSH_LOCAL str 16
000003174     39               CHANGE_REF_CNT -- str; POP
000003175     39                  LEAVE_FRAME
000003176     39                       RETURN 3


Function: mkdirp

000003177     64                  ENTER_FRAME 17
000003178     48                    PUSH_ZERO 2
000003179     48                         PUSH ^ 0x557ddbb0cdd0
000003180     48               CHANGE_REF_CNT ++ str
000003181     48                         CALL dir (1921)
000003182     48                     PUSH_REG 0
000003183     48                          DUP
000003184     48               PUSH_LOCAL_PTR -16
000003185     48                 SWAP; ASSIGN str 8
000003186     48                          POP 1
000003187     50                    PUSH_ZERO 2
000003188     50                   PUSH_LOCAL str 16
000003189     50               CHANGE_REF_CNT ++ str
000003190     50                         PUSH char 0x557ddba6fc60; DEREF
000003191     50                 CALL_BUILTIN char maketostr
000003192     50               PUSH_LOCAL_PTR -48
000003193     50                         CALL split (2548)
000003194     50                     PUSH_REG 0
000003195     50               PUSH_LOCAL_PTR -96
000003196     50                 SWAP; ASSIGN [] 24
000003197     51                         PUSH ^ 0x557ddbae96a0
000003198     51               CHANGE_REF_CNT ++ str
000003199     51               PUSH_LOCAL_PTR -104
000003200     51                 SWAP; ASSIGN str 8
000003201     52               PUSH_LOCAL_PTR -96
000003202     52                          DUP
000003203     52                 CALL_BUILTIN [] len
000003204     52               PUSH_LOCAL_PTR -112
000003205     52                 SWAP; ASSIGN int 8
000003206     52                          POP 1
000003207     52               PUSH_LOCAL_PTR -120
000003208     52                         ZERO 8
000003209     52                   PUSH_LOCAL int -120
000003210     52                   PUSH_LOCAL int -112
000003211     52                       BINARY < int 0
000003212     52                      GOTO_IF 3217

000003213     61                         GOTO 3274

000003214     52               PUSH_LOCAL_PTR -120
000003215     52                        UNARY ++ int
000003216     52                         GOTO 3209

000003217     53               PUSH_LOCAL_PTR -104
000003218     53                          DUP
000003219     53                        DEREF str
000003220     53               PUSH_LOCAL_PTR -96
000003221     53                   PUSH_LOCAL int -120
000003222     53             GET_DYNARRAY_PTR str; DEREF
000003223     53                         PUSH char 0x557ddba6fc60; DEREF
000003224     53                 CALL_BUILTIN char maketostr
000003225     53                          DUP
000003226     53               PUSH_LOCAL_PTR -128
000003227     53                 SWAP; ASSIGN str 8
000003228     53                       BINARY + str 0
000003229     53                          DUP
000003230     53               PUSH_LOCAL_PTR -136
000003231     53                 SWAP; ASSIGN str 8
000003232     53                       BINARY += str 0
000003233     53                          DUP
000003234     53               PUSH_LOCAL_PTR -144
000003235     53                 SWAP; ASSIGN str 8
000003236     53        CHANGE_REF_CNT_ASSIGN str
000003237     54                    PUSH_ZERO 2
000003238     54                   PUSH_LOCAL str -104
000003239     54               CHANGE_REF_CNT ++ str
000003240     54                         CALL isfile (3133)
000003241     54                     PUSH_REG 0
000003242     54                      GOTO_IF 3244

000003243     56                         GOTO 3253

000003244     55                         PUSH int 37
000003245     55                      POP_REG 0
000003246     55                   PUSH_LOCAL str -128
000003247     55               CHANGE_REF_CNT -- str; POP
000003248     55                   PUSH_LOCAL str -136
000003249     55               CHANGE_REF_CNT -- str; POP
000003250     55                   PUSH_LOCAL str -144
000003251     55               CHANGE_REF_CNT -- str; POP
000003252     64                         GOTO 3277

000003253     58                    PUSH_ZERO 2
000003254     58                   PUSH_LOCAL str -104
000003255     58               CHANGE_REF_CNT ++ str
000003256     58                         CALL isdir (3148)
000003257     58                     PUSH_REG 0
000003258     58                        UNARY ! bool
000003259     58                      GOTO_IF 3261

000003260     60                         GOTO 3267

000003261     59                    PUSH_ZERO 2
000003262     59                   PUSH_LOCAL str -104
000003263     59               CHANGE_REF_CNT ++ str
000003264     59                         CALL mkdir (3163)
000003265     59                     PUSH_REG 0
000003266     59                          POP 1
000003267     61                   PUSH_LOCAL str -128
000003268     61               CHANGE_REF_CNT -- str; POP
000003269     61                   PUSH_LOCAL str -136
000003270     61               CHANGE_REF_CNT -- str; POP
000003271     61                   PUSH_LOCAL str -144
000003272     61               CHANGE_REF_CNT -- str; POP
000003273     61                         GOTO 3214

000003274     63                         PUSH int 0
000003275     63                      POP_REG 0
000003276     64                         GOTO 3277

000003277     64                   PUSH_LOCAL interface 24
000003278     64               CHANGE_REF_CNT -- interface; POP
000003279     64                   PUSH_LOCAL str 16
000003280     64               CHANGE_REF_CNT -- str; POP
000003281     64                   PUSH_LOCAL str -16
000003282     64               CHANGE_REF_CNT -- str; POP
000003283     64                   PUSH_LOCAL [] -96
000003284     64               CHANGE_REF_CNT -- []str; POP
000003285     64                   PUSH_LOCAL str -104
000003286     64               CHANGE_REF_CNT -- str; POP
000003287     64                  LEAVE_FRAME
000003288     64                       RETURN 3

000003289    159                         GOTO 3732


Function: remove

000003290     73                  ENTER_FRAME 0
000003291     72                    PUSH_ZERO 2
000003292     72                   PUSH_LOCAL str 16
000003293     72               CHANGE_REF_CNT ++ str
000003294     72                         CALL <unknown> (3289)
000003295     72                     PUSH_REG 0
000003296     72                      POP_REG 0
000003297     73                         GOTO 3298

000003298     73                   PUSH_LOCAL interface 24
000003299     73               CHANGE_REF_CNT -- interface; POP
000003300     73                   PUSH_LOCAL str 16
000003301     73               CHANGE_REF_CNT -- str; POP
000003302     73                  LEAVE_FRAME
000003303     73                       RETURN 3

000003304    159                         GOTO 3740


Function: strerror

000003305     82                  ENTER_FRAME 1
000003306     81                    PUSH_ZERO 2
000003307     81                   PUSH_LOCAL int 16
000003308     81                         CALL <unknown> (3304)
000003309     81                     PUSH_REG 0
000003310     81                      POP_REG 0
000003311     82                         GOTO 3312

000003312     82                   PUSH_LOCAL interface 24
000003313     82               CHANGE_REF_CNT -- interface; POP
000003314     82                  LEAVE_FRAME
000003315     82                       RETURN 3

000003316    159                         GOTO 3746


Function: listdir

000003317     96                  ENTER_FRAME 8
000003318     93               PUSH_LOCAL_PTR -32
000003319     93                         ZERO 24
000003320     94                    PUSH_ZERO 2
000003321     94                   PUSH_LOCAL str 24
000003322     94               CHANGE_REF_CNT ++ str
000003323     94               PUSH_LOCAL_PTR -32
000003324     94               CHANGE_REF_CNT ++ ^StrArr
000003325     94                         CALL <unknown> (3316)
000003326     94                     PUSH_REG 0
000003327     94               PUSH_LOCAL_PTR -40
000003328     94                 SWAP; ASSIGN int 8
000003329     95               PUSH_LOCAL_PTR -32
000003330     95                   PUSH_LOCAL int -40
000003331     95               PUSH_LOCAL_PTR -72
000003332     95                         ZERO 32
000003333     95               PUSH_LOCAL_PTR -48
000003334     95                 SWAP; ASSIGN int 8
000003335     95               PUSH_LOCAL_PTR -72
000003336     95  SWAP; CHANGE_REF_CNT_ASSIGN []str
000003337     95               PUSH_LOCAL_PTR -72
000003338     95                   PUSH_LOCAL ^ 16
000003339     95                 SWAP; ASSIGN struct 32
000003340     95                   PUSH_LOCAL ^ 16
000003341     95               CHANGE_REF_CNT ++ { []str Errno }
000003342     95                      POP_REG 0
000003343     96                         GOTO 3344

000003344     96                   PUSH_LOCAL interface 32
000003345     96               CHANGE_REF_CNT -- interface; POP
000003346     96                   PUSH_LOCAL str 24
000003347     96               CHANGE_REF_CNT -- str; POP
000003348     96                   PUSH_LOCAL [] -32
000003349     96               CHANGE_REF_CNT -- []str; POP
000003350     96                   PUSH_LOCAL struct -72
000003351     96               CHANGE_REF_CNT -- { []str Errno }; POP
000003352     96                  LEAVE_FRAME
000003353     96                       RETURN 4


Function: walk

000003354    126                  ENTER_FRAME 28
000003355    103                    PUSH_ZERO 2
000003356    103                   PUSH_LOCAL str 48
000003357    103               CHANGE_REF_CNT ++ str
000003358    103               PUSH_LOCAL_PTR -40
000003359    103                         CALL listdir (3317)
000003360    103                     PUSH_REG 0
000003361    103                          DUP
000003362    103               PUSH_LOCAL_PTR -72
000003363    103                 SWAP; ASSIGN struct 32
000003364    103                          DUP
000003365    103                        DEREF []
000003366    103               CHANGE_REF_CNT ++ []str
000003367    103               PUSH_LOCAL_PTR -96
000003368    103                 SWAP; ASSIGN [] 24
000003369    103                          DUP
000003370    103                GET_FIELD_PTR int 24; DEREF
000003371    103               PUSH_LOCAL_PTR -104
000003372    103                 SWAP; ASSIGN int 8
000003373    103                          POP 1
000003374    104                   PUSH_LOCAL int -104
000003375    104                         PUSH int 0
000003376    104                       BINARY != int 8
000003377    104                      GOTO_IF 3379

000003378    106                         GOTO 3382

000003379    105                   PUSH_LOCAL int -104
000003380    105                      POP_REG 0
000003381    126                         GOTO 3495

000003382    108               PUSH_LOCAL_PTR -96
000003383    108                          DUP
000003384    108                 CALL_BUILTIN [] len
000003385    108               PUSH_LOCAL_PTR -112
000003386    108                 SWAP; ASSIGN int 8
000003387    108               PUSH_LOCAL_PTR -136
000003388    108                         ZERO 24
000003389    108               PUSH_LOCAL_PTR -136
000003390    108  SWAP; CHANGE_REF_CNT_ASSIGN []str
000003391    108               PUSH_LOCAL_PTR -144
000003392    108                         ZERO 8
000003393    108               PUSH_LOCAL_PTR -152
000003394    108                         ZERO 8
000003395    108                   PUSH_LOCAL int -144
000003396    108                   PUSH_LOCAL int -112
000003397    108                       BINARY < int 0
000003398    108                      GOTO_IF 3403

000003399    123                         GOTO 3488

000003400    108               PUSH_LOCAL_PTR -144
000003401    108                        UNARY ++ int
000003402    108                         GOTO 3395

000003403    108                   PUSH_LOCAL [] -136
000003404    108                   PUSH_LOCAL int -144
000003405    108             GET_DYNARRAY_PTR str; DEREF
000003406    108               PUSH_LOCAL_PTR -152
000003407    108  SWAP; CHANGE_REF_CNT_ASSIGN str
000003408    109                   PUSH_LOCAL str -152
000003409    109                         PUSH ^ 0x557ddbae96e0
000003410    109                       BINARY == str 8
000003411    109                          DUP
000003412    109                      POP_REG 2
000003413    109                        UNARY ! bool
000003414    109                      GOTO_IF 3416

000003415    109                         GOTO 3420

000003416    109                   PUSH_LOCAL str -152
000003417    109                         PUSH ^ 0x557ddbb4d900
000003418    109                       BINARY == str 8
000003419    109                      POP_REG 2
000003420    109                     PUSH_REG 2
000003421    109                      GOTO_IF 3423

000003422    111                         GOTO 3424

000003423    123                         GOTO 3487

000003424    113                    PUSH_ZERO 2
000003425    113                   PUSH_LOCAL str 48
000003426    113                   PUSH_LOCAL str -152
000003427    113               PUSH_LOCAL_PTR -168
000003428    113                         ZERO 16
000003429    113               PUSH_LOCAL_PTR -160
000003430    113  SWAP; CHANGE_REF_CNT_ASSIGN str
000003431    113               PUSH_LOCAL_PTR -168
000003432    113  SWAP; CHANGE_REF_CNT_ASSIGN str
000003433    113               PUSH_LOCAL_PTR -168
000003434    113                         PUSH ^ 0x557ddba4de70
000003435    113                         PUSH int 2
000003436    113               PUSH_LOCAL_PTR -192
000003437    113                 CALL_BUILTIN [] makefromarr
000003438    113                  PUSH_STRUCT 24
000003439    113                         CALL join (2104)
000003440    113                     PUSH_REG 0
000003441    113               PUSH_LOCAL_PTR -232
000003442    113                 SWAP; ASSIGN str 8
000003443    115                    PUSH_ZERO 2
000003444    115                   PUSH_LOCAL str -232
000003445    115               CHANGE_REF_CNT ++ str
000003446    115                         CALL isdir (3148)
000003447    115                     PUSH_REG 0
000003448    115                      GOTO_IF 3450

000003449    120                         GOTO 3475

000003450    116                    PUSH_ZERO 2
000003451    116                   PUSH_LOCAL str -232
000003452    116               CHANGE_REF_CNT ++ str
000003453    116               PUSH_LOCAL_PTR 24
000003454    116               CHANGE_REF_CNT ++ fn (str) |...|
000003455    116                  PUSH_STRUCT 24
000003456    116                   PUSH_LOCAL bool 16
000003457    116                 ASSERT_RANGE bool
000003458    116                 CALL_BUILTIN bool narrow
000003459    116                         CALL walk (3354)
000003460    116                     PUSH_REG 0
000003461    116                          POP 1
000003462    117                   PUSH_LOCAL bool 16
000003463    117                        UNARY ! bool
000003464    117                      GOTO_IF 3466

000003465    119                         GOTO 3474

000003466    118               PUSH_LOCAL_PTR 24
000003467    118                 PUSH_UPVALUE
000003468    118               CHANGE_REF_CNT ++ interface
000003469    118                  PUSH_STRUCT 16
000003470    118                   PUSH_LOCAL str -232
000003471    118               CHANGE_REF_CNT ++ str
000003472    118                CALL_INDIRECT 3
000003473    118                          POP 1
000003474    122                         GOTO 3483

000003475    121               PUSH_LOCAL_PTR 24
000003476    121                 PUSH_UPVALUE
000003477    121               CHANGE_REF_CNT ++ interface
000003478    121                  PUSH_STRUCT 16
000003479    121                   PUSH_LOCAL str -232
000003480    121               CHANGE_REF_CNT ++ str
000003481    121                CALL_INDIRECT 3
000003482    121                          POP 1
000003483    123                   PUSH_LOCAL [...] -168
000003484    123               CHANGE_REF_CNT -- [2]str; POP
000003485    123                   PUSH_LOCAL str -232
000003486    123               CHANGE_REF_CNT -- str; POP
000003487    123                         GOTO 3400

000003488    123                   PUSH_LOCAL [] -136
000003489    123               CHANGE_REF_CNT -- []str; POP
000003490    123                   PUSH_LOCAL str -152
000003491    123               CHANGE_REF_CNT -- str; POP
000003492    125                         PUSH int 0
000003493    125                      POP_REG 0
000003494    126                         GOTO 3495

000003495    126                   PUSH_LOCAL interface 56
000003496    126               CHANGE_REF_CNT -- interface; POP
000003497    126                   PUSH_LOCAL str 48
000003498    126               CHANGE_REF_CNT -- str; POP
000003499    126                   PUSH_LOCAL fn |..| 24
000003500    126               CHANGE_REF_CNT -- fn (str) |...|; POP
000003501    126                   PUSH_LOCAL struct -72
000003502    126               CHANGE_REF_CNT -- { []str Errno }; POP
000003503    126                   PUSH_LOCAL [] -96
000003504    126               CHANGE_REF_CNT -- []str; POP
000003505    126                  LEAVE_FRAME
000003506    126                       RETURN 7

000003507    159                         GOTO 3756


Function: chmod

000003508    136                  ENTER_FRAME 0
000003509    135                    PUSH_ZERO 2
000003510    135                   PUSH_LOCAL str 24
000003511    135               CHANGE_REF_CNT ++ str
000003512    135                   PUSH_LOCAL int 16
000003513    135                         CALL <unknown> (3507)
000003514    135                     PUSH_REG 0
000003515    135                      POP_REG 0
000003516    136                         GOTO 3517

000003517    136                   PUSH_LOCAL interface 32
000003518    136               CHANGE_REF_CNT -- interface; POP
000003519    136                   PUSH_LOCAL str 24
000003520    136               CHANGE_REF_CNT -- str; POP
000003521    136                  LEAVE_FRAME
000003522    136                       RETURN 4


Function: main

000003523    159                  ENTER_FRAME 7
000003524    139                    PUSH_ZERO 2
000003525    139                         PUSH ^ 0x557ddbb614d0
000003526    139               CHANGE_REF_CNT ++ str
000003527    139                         CALL mkdir (3163)
000003528    139                     PUSH_REG 0
000003529    139                          POP 1
000003530    141                    PUSH_ZERO 2
000003531    141                         PUSH ^ 0x557ddbb5a400
000003532    141               CHANGE_REF_CNT ++ str
000003533    141                         CALL remove (3290)
000003534    141                     PUSH_REG 0
000003535    141               PUSH_LOCAL_PTR -16
000003536    141                 SWAP; ASSIGN int 8
000003537    141                   PUSH_LOCAL int -16
000003538    141                         PUSH int 0
000003539    141                       BINARY != int 8
000003540    141                      GOTO_IF 3542

000003541    143                         GOTO 3561

000003542    142                         PUSH int 0
000003543    142                         PUSH ^ (nil)
000003544    142                         PUSH ^ 0x557ddbb600b0
000003545    142                    PUSH_ZERO 2
000003546    142                   PUSH_LOCAL int -16
000003547    142                         CALL strerror (3305)
000003548    142                     PUSH_REG 0
000003549    142                          DUP
000003550    142               PUSH_LOCAL_PTR -24
000003551    142                 SWAP; ASSIGN str 8
000003552    142                         PUSH ^ 0x557ddb9a9010
000003553    142                 CALL_BUILTIN str printf
000003554    142                          POP 2
000003555    142                         PUSH int 0
000003556    142                         PUSH ^ 0x557ddb99e100
000003557    142                 CALL_BUILTIN void printf
000003558    142                          POP 5
000003559    143                   PUSH_LOCAL str -24
000003560    143               CHANGE_REF_CNT -- str; POP
000003561    145                         PUSH int 0
000003562    145                         PUSH ^ (nil)
000003563    145                         PUSH ^ 0x557ddba4fd20
000003564    145                    PUSH_ZERO 2
000003565    145                         PUSH ^ 0x557ddba4fd70
000003566    145               CHANGE_REF_CNT ++ str
000003567    145                         CALL isfile (3133)
000003568    145                     PUSH_REG 0
000003569    145                         PUSH ^ 0x557ddb9a6f50
000003570    145                 CALL_BUILTIN bool printf
000003571    145                          POP 2
000003572    145                         PUSH int 0
000003573    145                         PUSH ^ 0x557ddb99e100
000003574    145                 CALL_BUILTIN void printf
000003575    145                          POP 5
000003576    146                         PUSH int 0
000003577    146                         PUSH ^ (nil)
000003578    146                         PUSH ^ 0x557ddbb4e4f0
000003579    146                    PUSH_ZERO 2
000003580    146                         PUSH ^ 0x557ddbb4e540
000003581    146               CHANGE_REF_CNT ++ str
000003582    146                         CALL isdir (3148)
000003583    146                     PUSH_REG 0
000003584    146                         PUSH ^ 0x557ddb9a6f50
000003585    146                 CALL_BUILTIN bool printf
000003586    146                          POP 2
000003587    146                         PUSH int 0
000003588    146                         PUSH ^ 0x557ddb99e100
000003589    146                 CALL_BUILTIN void printf
000003590    146                          POP 5
000003591    147                         PUSH int 0
000003592    147                         PUSH ^ (nil)
000003593    147                         PUSH ^ 0x557ddb9be7d0
000003594    147                    PUSH_ZERO 2
000003595    147                         PUSH ^ 0x557ddb9be820
000003596    147               CHANGE_REF_CNT ++ str
000003597    147                         CALL isfile (3133)
000003598    147                     PUSH_REG 0
000003599    147                         PUSH ^ 0x557ddb9a6f50
000003600    147                 CALL_BUILTIN bool printf
000003601    147                          POP 2
000003602    147                         PUSH int 0
000003603    147                         PUSH ^ 0x557ddb99e100
000003604    147                 CALL_BUILTIN void printf
000003605    147                          POP 5
000003606    148                         PUSH int 0
000003607    148                         PUSH ^ (nil)
000003608    148                         PUSH ^ 0x557ddb9be860
000003609    148                    PUSH_ZERO 2
000003610    148                         PUSH ^ 0x557ddbb61510
000003611    148               CHANGE_REF_CNT ++ str
000003612    148                         CALL isdir (3148)
000003613    148                     PUSH_REG 0
000003614    148                         PUSH ^ 0x557ddb9a6f50
000003615    148                 CALL_BUILTIN bool printf
000003616    148                          POP 2
000003617    148                         PUSH int 0
000003618    148                         PUSH ^ 0x557ddb99e100
000003619    148                 CALL_BUILTIN void printf
000003620    148                          POP 5
000003621    150                         PUSH int 0
000003622    150                         PUSH ^ (nil)
000003623    150                         PUSH ^ 0x557ddbb61550
000003624    150                         PUSH int 0
000003625    150                         PUSH ^ 0x557ddb99e100
000003626    150                 CALL_BUILTIN void printf
000003627    150                          POP 5
000003628    151                    PUSH_ZERO 2
000003629    151                         PUSH ^ 0x557ddbb615a0
000003630    151               CHANGE_REF_CNT ++ str
000003631    151               PUSH_LOCAL_PTR -48
000003632    151                         ZERO 24
000003633    153                         GOTO 3652


Function: <unknown>

000003634    153                  ENTER_FRAME 0
000003635    152                         PUSH int 0
000003636    152                         PUSH ^ (nil)
000003637    152                         PUSH ^ 0x557ddbb615e0
000003638    152                   PUSH_LOCAL str 16
000003639    152                         PUSH ^ 0x557ddb9a9010
000003640    152                 CALL_BUILTIN str printf
000003641    152                          POP 2
000003642    152                         PUSH int 0
000003643    152                         PUSH ^ 0x557ddb99e100
000003644    152                 CALL_BUILTIN void printf
000003645    152                          POP 5
000003646    153                   PUSH_LOCAL interface 24
000003647    153               CHANGE_REF_CNT -- interface; POP
000003648    153                   PUSH_LOCAL str 16
000003649    153               CHANGE_REF_CNT -- str; POP
000003650    153                  LEAVE_FRAME
000003651    153                       RETURN 3

000003652    153               PUSH_LOCAL_PTR -48
000003653    153                         PUSH int 3634
000003654    153                       ASSIGN fn 8
000003655    153               PUSH_LOCAL_PTR -48
000003656    153               CHANGE_REF_CNT ++ fn (str) |...|
000003657    153                  PUSH_STRUCT 24
000003658    153                         PUSH int 0
000003659    153                 ASSERT_RANGE bool
000003660    153                 CALL_BUILTIN bool narrow
000003661    153                         CALL walk (3354)
000003662    153                     PUSH_REG 0
000003663    153               PUSH_LOCAL_PTR -56
000003664    153                 SWAP; ASSIGN int 8
000003665    153                   PUSH_LOCAL int -56
000003666    153                         PUSH int 0
000003667    153                       BINARY != int 8
000003668    153                      GOTO_IF 3670

000003669    155                         GOTO 3689

000003670    154                         PUSH int 0
000003671    154                         PUSH ^ (nil)
000003672    154                         PUSH ^ 0x557ddbb61620
000003673    154                    PUSH_ZERO 2
000003674    154                   PUSH_LOCAL int -56
000003675    154                         CALL strerror (3305)
000003676    154                     PUSH_REG 0
000003677    154                          DUP
000003678    154               PUSH_LOCAL_PTR -64
000003679    154                 SWAP; ASSIGN str 8
000003680    154                         PUSH ^ 0x557ddb9a9010
000003681    154                 CALL_BUILTIN str printf
000003682    154                          POP 2
000003683    154                         PUSH int 0
000003684    154                         PUSH ^ 0x557ddb99e100
000003685    154                 CALL_BUILTIN void printf
000003686    154                          POP 5
000003687    155                   PUSH_LOCAL str -64
000003688    155               CHANGE_REF_CNT -- str; POP
000003689    155                   PUSH_LOCAL fn |..| -48
000003690    155               CHANGE_REF_CNT -- fn (str) |...|; POP
000003691    157                    PUSH_ZERO 2
000003692    157                         PUSH ^ 0x557ddbb61670
000003693    157               CHANGE_REF_CNT ++ str
000003694    157                         CALL mkdirp (3177)
000003695    157                     PUSH_REG 0
000003696    157                          POP 1
000003697    158                    PUSH_ZERO 2
000003698    158                         PUSH ^ 0x557ddbb772e0
000003699    158               CHANGE_REF_CNT ++ str
000003700    158                         PUSH int 484
000003701    158                         CALL chmod (3508)
000003702    158                     PUSH_REG 0
000003703    158                          POP 1
000003704    159                   PUSH_LOCAL interface 16
000003705    159               CHANGE_REF_CNT -- interface; POP
000003706    159                  LEAVE_FRAME
000003707    159                       RETURN 2


Function: <unknown>

000003708    159                  ENTER_FRAME 0
000003709    159                  CALL_EXTERN 0x7f8e6ae5391e
000003710    159                   PUSH_LOCAL interface 24
000003711    159               CHANGE_REF_CNT -- interface; POP
000003712    159                   PUSH_LOCAL str 16
000003713    159               CHANGE_REF_CNT -- str; POP
000003714    159                  LEAVE_FRAME
000003715    159                       RETURN 3


Function: <unknown>

000003716    159                  ENTER_FRAME 0
000003717    159                  CALL_EXTERN 0x7f8e6ae53992
000003718    159                   PUSH_LOCAL interface 24
000003719    159               CHANGE_REF_CNT -- interface; POP
000003720    159                   PUSH_LOCAL str 16
000003721    159               CHANGE_REF_CNT -- str; POP
000003722    159                  LEAVE_FRAME
000003723    159                       RETURN 3


Function: <unknown>

000003724    159                  ENTER_FRAME 0
000003725    159                  CALL_EXTERN 0x7f8e6ae536f5
000003726    159                   PUSH_LOCAL interface 24
000003727    159               CHANGE_REF_CNT -- interface; POP
000003728    159                   PUSH_LOCAL str 16
000003729    159               CHANGE_REF_CNT -- str; POP
000003730    159                  LEAVE_FRAME
000003731    159                       RETURN 3


Function: <unknown>

000003732    159                  ENTER_FRAME 0
000003733    159                  CALL_EXTERN 0x7f8e6ae5373f
000003734    159                   PUSH_LOCAL interface 24
000003735    159               CHANGE_REF_CNT -- interface; POP
000003736    159                   PUSH_LOCAL str 16
000003737    159               CHANGE_REF_CNT -- str; POP
000003738    159                  LEAVE_FRAME
000003739    159                       RETURN 3


Function: <unknown>

000003740    159                  ENTER_FRAME 0
000003741    159                  CALL_EXTERN 0x7f8e6ae53784
000003742    159                   PUSH_LOCAL interface 24
000003743    159               CHANGE_REF_CNT -- interface; POP
000003744    159                  LEAVE_FRAME
000003745    159                       RETURN 3


Function: <unknown>

000003746    159                  ENTER_FRAME 0
000003747    159                  CALL_EXTERN 0x7f8e6ae537c7
000003748    159                   PUSH_LOCAL interface 32
000003749    159               CHANGE_REF_CNT -- interface; POP
000003750    159                   PUSH_LOCAL str 24
000003751    159               CHANGE_REF_CNT -- str; POP
000003752    159                   PUSH_LOCAL ^ 16
000003753    159               CHANGE_REF_CNT -- ^StrArr; POP
000003754    159                  LEAVE_FRAME
000003755    159                       RETURN 4


Function: <unknown>

000003756    159                  ENTER_FRAME 0
000003757    159                  CALL_EXTERN 0x7f8e6ae53a06
000003758    159                   PUSH_LOCAL interface 32
000003759    159               CHANGE_REF_CNT -- interface; POP
000003760    159                   PUSH_LOCAL str 24
000003761    159               CHANGE_REF_CNT -- str; POP
000003762    159                  LEAVE_FRAME
000003763    159                       RETURN 4


Module: /home/marek/dev/umlibs/tar/pak/filepath/pak/strings/strings.um


Function: contains

000003764     15                  ENTER_FRAME 2
000003765      6                         PUSH int 0
000003766      6               PUSH_LOCAL_PTR -16
000003767      6                 SWAP; ASSIGN int 8
000003768      6                   PUSH_LOCAL int -16
000003769      6                   PUSH_LOCAL str 24
000003770      6                 CALL_BUILTIN str len
000003771      6                       BINARY < int 8
000003772      6                      GOTO_IF 3777

000003773     12                         GOTO 3829

000003774      6               PUSH_LOCAL_PTR -16
000003775      6                        UNARY ++ int
000003776      6                         GOTO 3768

000003777      7                         PUSH int 0
000003778      7               PUSH_LOCAL_PTR -24
000003779      7                 SWAP; ASSIGN int 8
000003780      7                   PUSH_LOCAL int -16
000003781      7                   PUSH_LOCAL int -24
000003782      7                       BINARY + int 8
000003783      7                   PUSH_LOCAL str 24
000003784      7                 CALL_BUILTIN str len
000003785      7                       BINARY < int 8
000003786      7                          DUP
000003787      7                      POP_REG 2
000003788      7                      GOTO_IF 3790

000003789      7                         GOTO 3800

000003790      7                   PUSH_LOCAL str 24
000003791      7                   PUSH_LOCAL int -16
000003792      7                   PUSH_LOCAL int -24
000003793      7                       BINARY + int 8
000003794      7                GET_ARRAY_PTR char 1 -1; DEREF
000003795      7                   PUSH_LOCAL str 16
000003796      7                   PUSH_LOCAL int -24
000003797      7                GET_ARRAY_PTR char 1 -1; DEREF
000003798      7                       BINARY == char 1
000003799      7                      POP_REG 2
000003800      7                     PUSH_REG 2
000003801      7                          DUP
000003802      7                      POP_REG 2
000003803      7                      GOTO_IF 3805

000003804      7                         GOTO 3810

000003805      7                   PUSH_LOCAL int -24
000003806      7                   PUSH_LOCAL str 16
000003807      7                 CALL_BUILTIN str len
000003808      7                       BINARY < int 8
000003809      7                      POP_REG 2
000003810      7                     PUSH_REG 2
000003811      7                      GOTO_IF 3816

000003812     11                         GOTO 3828

000003813      7               PUSH_LOCAL_PTR -24
000003814      7                        UNARY ++ int
000003815      7                         GOTO 3780

000003816      8                   PUSH_LOCAL int -24
000003817      8                   PUSH_LOCAL str 16
000003818      8                 CALL_BUILTIN str len
000003819      8                         PUSH int 1
000003820      8                       BINARY - int 8
000003821      8                       BINARY == int 8
000003822      8                      GOTO_IF 3824

000003823     10                         GOTO 3827

000003824      9                         PUSH int 1
000003825      9                      POP_REG 0
000003826     15                         GOTO 3832

000003827     11                         GOTO 3813

000003828     12                         GOTO 3774

000003829     14                         PUSH int 0
000003830     14                      POP_REG 0
000003831     15                         GOTO 3832

000003832     15                   PUSH_LOCAL interface 32
000003833     15               CHANGE_REF_CNT -- interface; POP
000003834     15                   PUSH_LOCAL str 24
000003835     15               CHANGE_REF_CNT -- str; POP
000003836     15                   PUSH_LOCAL str 16
000003837     15               CHANGE_REF_CNT -- str; POP
000003838     15                  LEAVE_FRAME
000003839     15                       RETURN 4


Function: join

000003840     31                  ENTER_FRAME 4
000003841     21                         PUSH ^ 0x557ddbb7ada0
000003842     21               CHANGE_REF_CNT ++ str
000003843     21               PUSH_LOCAL_PTR -16
000003844     21                 SWAP; ASSIGN str 8
000003845     23                         PUSH int 0
000003846     23               PUSH_LOCAL_PTR -24
000003847     23                 SWAP; ASSIGN int 8
000003848     23                   PUSH_LOCAL int -24
000003849     23               PUSH_LOCAL_PTR 24
000003850     23                 CALL_BUILTIN [] len
000003851     23                       BINARY < int 8
000003852     23                      GOTO_IF 3857

000003853     28                         GOTO 3890

000003854     23               PUSH_LOCAL_PTR -24
000003855     23                        UNARY ++ int
000003856     23                         GOTO 3848

000003857     24               PUSH_LOCAL_PTR -16
000003858     24                          DUP
000003859     24                        DEREF str
000003860     24               PUSH_LOCAL_PTR 24
000003861     24                   PUSH_LOCAL int -24
000003862     24             GET_DYNARRAY_PTR str; DEREF
000003863     24                       BINARY += str 0
000003864     24                          DUP
000003865     24               PUSH_LOCAL_PTR -32
000003866     24                 SWAP; ASSIGN str 8
000003867     24        CHANGE_REF_CNT_ASSIGN str
000003868     25                   PUSH_LOCAL int -24
000003869     25               PUSH_LOCAL_PTR 24
000003870     25                 CALL_BUILTIN [] len
000003871     25                         PUSH int 1
000003872     25                       BINARY - int 8
000003873     25                       BINARY != int 8
000003874     25                      GOTO_IF 3876

000003875     27                         GOTO 3887

000003876     26               PUSH_LOCAL_PTR -16
000003877     26                          DUP
000003878     26                        DEREF str
000003879     26                   PUSH_LOCAL str 16
000003880     26                       BINARY += str 0
000003881     26                          DUP
000003882     26               PUSH_LOCAL_PTR -40
000003883     26                 SWAP; ASSIGN str 8
000003884     26        CHANGE_REF_CNT_ASSIGN str
000003885     27                   PUSH_LOCAL str -40
000003886     27               CHANGE_REF_CNT -- str; POP
000003887     28                   PUSH_LOCAL str -32
000003888     28               CHANGE_REF_CNT -- str; POP
000003889     28                         GOTO 3854

000003890     30                   PUSH_LOCAL str -16
000003891     30               CHANGE_REF_CNT ++ str
000003892     30                      POP_REG 0
000003893     31                         GOTO 3894

000003894     31                   PUSH_LOCAL interface 48
000003895     31               CHANGE_REF_CNT -- interface; POP
000003896     31                   PUSH_LOCAL [] 24
000003897     31               CHANGE_REF_CNT -- []str; POP
000003898     31                   PUSH_LOCAL str 16
000003899     31               CHANGE_REF_CNT -- str; POP
000003900     31                   PUSH_LOCAL str -16
000003901     31               CHANGE_REF_CNT -- str; POP
000003902     31                  LEAVE_FRAME
000003903     31                       RETURN 6


Function: _has_prefix

000003904     42                  ENTER_FRAME 1
000003905     34                   PUSH_LOCAL int 24
000003906     34                   PUSH_LOCAL int 32
000003907     34                       BINARY - int 8
000003908     34                   PUSH_LOCAL int 16
000003909     34                       BINARY < int 8
000003910     34                      GOTO_IF 3912

000003911     34                         GOTO 3915

000003912     34                         PUSH int 0
000003913     34                      POP_REG 0
000003914     42                         GOTO 3944

000003915     36                         PUSH int 0
000003916     36               PUSH_LOCAL_PTR -16
000003917     36                 SWAP; ASSIGN int 8
000003918     36                   PUSH_LOCAL int -16
000003919     36                   PUSH_LOCAL int 16
000003920     36                       BINARY < int 8
000003921     36                      GOTO_IF 3926

000003922     39                         GOTO 3941

000003923     36               PUSH_LOCAL_PTR -16
000003924     36                        UNARY ++ int
000003925     36                         GOTO 3918

000003926     37                   PUSH_LOCAL str 48
000003927     37                   PUSH_LOCAL int 32
000003928     37                GET_ARRAY_PTR char 1 -1; DEREF
000003929     37                   PUSH_LOCAL str 40
000003930     37                   PUSH_LOCAL int -16
000003931     37                GET_ARRAY_PTR char 1 -1; DEREF
000003932     37                       BINARY != char 1
000003933     37                      GOTO_IF 3935

000003934     37                         GOTO 3938

000003935     37                         PUSH int 0
000003936     37                      POP_REG 0
000003937     42                         GOTO 3944

000003938     38               PUSH_LOCAL_PTR 32
000003939     38                        UNARY ++ int
000003940     39                         GOTO 3923

000003941     41                         PUSH int 1
000003942     41                      POP_REG 0
000003943     42                         GOTO 3944

000003944     42                   PUSH_LOCAL interface 56
000003945     42               CHANGE_REF_CNT -- interface; POP
000003946     42                   PUSH_LOCAL str 48
000003947     42               CHANGE_REF_CNT -- str; POP
000003948     42                   PUSH_LOCAL str 40
000003949     42               CHANGE_REF_CNT -- str; POP
000003950     42                  LEAVE_FRAME
000003951     42                       RETURN 7


Function: has_prefix

000003952     49                  ENTER_FRAME 0
000003953     48                    PUSH_ZERO 2
000003954     48                   PUSH_LOCAL str 24
000003955     48               CHANGE_REF_CNT ++ str
000003956     48                   PUSH_LOCAL str 16
000003957     48               CHANGE_REF_CNT ++ str
000003958     48                         PUSH int 0
000003959     48                   PUSH_LOCAL str 24
000003960     48                 CALL_BUILTIN str len
000003961     48                   PUSH_LOCAL str 16
000003962     48                 CALL_BUILTIN str len
000003963     48                         CALL _has_prefix (3904)
000003964     48                     PUSH_REG 0
000003965     48                      POP_REG 0
000003966     49                         GOTO 3967

000003967     49                   PUSH_LOCAL interface 32
000003968     49               CHANGE_REF_CNT -- interface; POP
000003969     49                   PUSH_LOCAL str 24
000003970     49               CHANGE_REF_CNT -- str; POP
000003971     49                   PUSH_LOCAL str 16
000003972     49               CHANGE_REF_CNT -- str; POP
000003973     49                  LEAVE_FRAME
000003974     49                       RETURN 4


Function: split

000003975     72                  ENTER_FRAME 29
000003976     55               PUSH_LOCAL_PTR -8
000003977     55                         ZERO 0
000003978     55               PUSH_LOCAL_PTR -8
000003979     55                         PUSH ^ 0x557ddbb97bf0
000003980     55                         PUSH int 0
000003981     55               PUSH_LOCAL_PTR -32
000003982     55                 CALL_BUILTIN [] makefromarr
000003983     55               PUSH_LOCAL_PTR -80
000003984     55                 SWAP; ASSIGN [] 24
000003985     56                         PUSH int 0
000003986     56               PUSH_LOCAL_PTR -88
000003987     56                 SWAP; ASSIGN int 8
000003988     58                   PUSH_LOCAL str 24
000003989     58                 CALL_BUILTIN str len
000003990     58               PUSH_LOCAL_PTR -96
000003991     58                 SWAP; ASSIGN int 8
000003992     59                   PUSH_LOCAL str 32
000003993     59                 CALL_BUILTIN str len
000003994     59               PUSH_LOCAL_PTR -104
000003995     59                 SWAP; ASSIGN int 8
000003996     61                         PUSH int 0
000003997     61               PUSH_LOCAL_PTR -112
000003998     61                 SWAP; ASSIGN int 8
000003999     61                   PUSH_LOCAL int -112
000004000     61                   PUSH_LOCAL int -104
000004001     61                       BINARY < int 8
000004002     61                      GOTO_IF 4007

000004003     67                         GOTO 4054

000004004     61               PUSH_LOCAL_PTR -112
000004005     61                        UNARY ++ int
000004006     61                         GOTO 3999

000004007     62                    PUSH_ZERO 2
000004008     62                   PUSH_LOCAL str 32
000004009     62               CHANGE_REF_CNT ++ str
000004010     62                   PUSH_LOCAL str 24
000004011     62               CHANGE_REF_CNT ++ str
000004012     62                   PUSH_LOCAL int -112
000004013     62                   PUSH_LOCAL int -104
000004014     62                   PUSH_LOCAL int -96
000004015     62                         CALL _has_prefix (3904)
000004016     62                     PUSH_REG 0
000004017     62                      GOTO_IF 4019

000004018     66                         GOTO 4053

000004019     63               PUSH_LOCAL_PTR -80
000004020     63               PUSH_LOCAL_PTR -80
000004021     63                   PUSH_LOCAL str 32
000004022     63                   PUSH_LOCAL int -88
000004023     63                   PUSH_LOCAL int -112
000004024     63                         PUSH ^ 0x557ddb9a9010
000004025     63                         PUSH ^ (nil)
000004026     63                 CALL_BUILTIN [] slice
000004027     63                          DUP
000004028     63               PUSH_LOCAL_PTR -120
000004029     63                 SWAP; ASSIGN str 8
000004030     63               PUSH_LOCAL_PTR -128
000004031     63                 SWAP; ASSIGN str 0
000004032     63               PUSH_LOCAL_PTR -128
000004033     63                         PUSH int 1
000004034     63                         PUSH ^ 0x557ddbb97bf0
000004035     63               PUSH_LOCAL_PTR -152
000004036     63                 CALL_BUILTIN [] append
000004037     63        CHANGE_REF_CNT_ASSIGN -- []str
000004038     64               PUSH_LOCAL_PTR -112
000004039     64                          DUP
000004040     64                        DEREF int
000004041     64                   PUSH_LOCAL int -96
000004042     64                         PUSH int 1
000004043     64                       BINARY - int 8
000004044     64                       BINARY + int 8
000004045     64                       ASSIGN int 8
000004046     65               PUSH_LOCAL_PTR -88
000004047     65                   PUSH_LOCAL int -112
000004048     65                         PUSH int 1
000004049     65                       BINARY + int 8
000004050     65                       ASSIGN int 8
000004051     66                   PUSH_LOCAL str -120
000004052     66               CHANGE_REF_CNT -- str; POP
000004053     67                         GOTO 4004

000004054     69               PUSH_LOCAL_PTR -80
000004055     69               PUSH_LOCAL_PTR -80
000004056     69                   PUSH_LOCAL str 32
000004057     69                   PUSH_LOCAL int -88
000004058     69                         PUSH int -2147483648
000004059     69                         PUSH ^ 0x557ddb9a9010
000004060     69                         PUSH ^ (nil)
000004061     69                 CALL_BUILTIN [] slice
000004062     69                          DUP
000004063     69               PUSH_LOCAL_PTR -184
000004064     69                 SWAP; ASSIGN str 8
000004065     69               PUSH_LOCAL_PTR -192
000004066     69                 SWAP; ASSIGN str 0
000004067     69               PUSH_LOCAL_PTR -192
000004068     69                         PUSH int 1
000004069     69                         PUSH ^ 0x557ddbb97bf0
000004070     69               PUSH_LOCAL_PTR -216
000004071     69                 CALL_BUILTIN [] append
000004072     69        CHANGE_REF_CNT_ASSIGN -- []str
000004073     71               PUSH_LOCAL_PTR -80
000004074     71                   PUSH_LOCAL ^ 16
000004075     71                 SWAP; ASSIGN [] 24
000004076     71                   PUSH_LOCAL ^ 16
000004077     71               CHANGE_REF_CNT ++ []str
000004078     71                      POP_REG 0
000004079     72                         GOTO 4080

000004080     72                   PUSH_LOCAL interface 40
000004081     72               CHANGE_REF_CNT -- interface; POP
000004082     72                   PUSH_LOCAL str 32
000004083     72               CHANGE_REF_CNT -- str; POP
000004084     72                   PUSH_LOCAL str 24
000004085     72               CHANGE_REF_CNT -- str; POP
000004086     72                   PUSH_LOCAL [...] -8
000004087     72               CHANGE_REF_CNT -- [0]str; POP
000004088     72                   PUSH_LOCAL [] -80
000004089     72               CHANGE_REF_CNT -- []str; POP
000004090     72                   PUSH_LOCAL str -184
000004091     72               CHANGE_REF_CNT -- str; POP
000004092     72                  LEAVE_FRAME
000004093     72                       RETURN 5


Function: replace

000004094     79                  ENTER_FRAME 7
000004095     78                    PUSH_ZERO 4
000004096     78                   PUSH_LOCAL str 32
000004097     78               CHANGE_REF_CNT ++ str
000004098     78                   PUSH_LOCAL str 24
000004099     78               CHANGE_REF_CNT ++ str
000004100     78               PUSH_LOCAL_PTR -32
000004101     78                         CALL split (3975)
000004102     78                     PUSH_REG 0
000004103     78                  PUSH_STRUCT 24
000004104     78                   PUSH_LOCAL str 16
000004105     78               CHANGE_REF_CNT ++ str
000004106     78                         CALL join (3840)
000004107     78                     PUSH_REG 0
000004108     78                      POP_REG 0
000004109     79                         GOTO 4110

000004110     79                   PUSH_LOCAL interface 40
000004111     79               CHANGE_REF_CNT -- interface; POP
000004112     79                   PUSH_LOCAL str 32
000004113     79               CHANGE_REF_CNT -- str; POP
000004114     79                   PUSH_LOCAL str 24
000004115     79               CHANGE_REF_CNT -- str; POP
000004116     79                   PUSH_LOCAL str 16
000004117     79               CHANGE_REF_CNT -- str; POP
000004118     79                  LEAVE_FRAME
000004119     79                       RETURN 5


Function: chartoupper

000004120     87                  ENTER_FRAME 0
000004121     82                   PUSH_LOCAL char 16
000004122     82                 ASSERT_RANGE int
000004123     82                         PUSH int 97
000004124     82                 ASSERT_RANGE int
000004125     82                       BINARY >= int 8
000004126     82                          DUP
000004127     82                      POP_REG 2
000004128     82                      GOTO_IF 4130

000004129     82                         GOTO 4136

000004130     82                   PUSH_LOCAL char 16
000004131     82                 ASSERT_RANGE int
000004132     82                         PUSH int 122
000004133     82                 ASSERT_RANGE int
000004134     82                       BINARY <= int 8
000004135     82                      POP_REG 2
000004136     82                     PUSH_REG 2
000004137     82                      GOTO_IF 4139

000004138     84                         GOTO 4146

000004139     83                   PUSH_LOCAL char 16
000004140     83                 ASSERT_RANGE int
000004141     83                         PUSH int 32
000004142     83                       BINARY - int 8
000004143     83                 ASSERT_RANGE char
000004144     83                      POP_REG 0
000004145     87                         GOTO 4149

000004146     86                   PUSH_LOCAL char 16
000004147     86                      POP_REG 0
000004148     87                         GOTO 4149

000004149     87                   PUSH_LOCAL interface 24
000004150     87               CHANGE_REF_CNT -- interface; POP
000004151     87                  LEAVE_FRAME
000004152     87                       RETURN 3


Function: toupper

000004153    101                  ENTER_FRAME 12
000004154     93                   PUSH_LOCAL str 16
000004155     93                 CALL_BUILTIN str len
000004156     93               PUSH_LOCAL_PTR -16
000004157     93                 SWAP; ASSIGN int 8
000004158     94                         PUSH ^ 0x557ddbac6600
000004159     94                   PUSH_LOCAL int -16
000004160     94               PUSH_LOCAL_PTR -40
000004161     94                 CALL_BUILTIN [] make
000004162     94               PUSH_LOCAL_PTR -88
000004163     94                 SWAP; ASSIGN [] 24
000004164     96                         PUSH int 0
000004165     96               PUSH_LOCAL_PTR -96
000004166     96                 SWAP; ASSIGN int 8
000004167     96                   PUSH_LOCAL int -96
000004168     96                   PUSH_LOCAL int -16
000004169     96                       BINARY < int 8
000004170     96                      GOTO_IF 4175

000004171     98                         GOTO 4188

000004172     96               PUSH_LOCAL_PTR -96
000004173     96                        UNARY ++ int
000004174     96                         GOTO 4167

000004175     97               PUSH_LOCAL_PTR -88
000004176     97                   PUSH_LOCAL int -96
000004177     97             GET_DYNARRAY_PTR
000004178     97                    PUSH_ZERO 2
000004179     97                   PUSH_LOCAL str 16
000004180     97                   PUSH_LOCAL int -96
000004181     97                GET_ARRAY_PTR char 1 -1; DEREF
000004182     97                 ASSERT_RANGE char
000004183     97                 CALL_BUILTIN char narrow
000004184     97                         CALL chartoupper (4120)
000004185     97                     PUSH_REG 0
000004186     97                       ASSIGN char 1
000004187     98                         GOTO 4172

000004188    100               PUSH_LOCAL_PTR -88
000004189    100                 CALL_BUILTIN [] maketostr
000004190    100                      POP_REG 0
000004191    101                         GOTO 4192

000004192    101                   PUSH_LOCAL interface 24
000004193    101               CHANGE_REF_CNT -- interface; POP
000004194    101                   PUSH_LOCAL str 16
000004195    101               CHANGE_REF_CNT -- str; POP
000004196    101                   PUSH_LOCAL [] -88
000004197    101               CHANGE_REF_CNT -- []char; POP
000004198    101                  LEAVE_FRAME
000004199    101                       RETURN 3


Function: chartolower

000004200    109                  ENTER_FRAME 0
000004201    104                   PUSH_LOCAL char 16
000004202    104                 ASSERT_RANGE int
000004203    104                         PUSH int 63
000004204    104                       BINARY >= int 8
000004205    104                          DUP
000004206    104                      POP_REG 2
000004207    104                      GOTO_IF 4209

000004208    104                         GOTO 4214

000004209    104                   PUSH_LOCAL char 16
000004210    104                 ASSERT_RANGE int
000004211    104                         PUSH int 90
000004212    104                       BINARY <= int 8
000004213    104                      POP_REG 2
000004214    104                     PUSH_REG 2
000004215    104                      GOTO_IF 4217

000004216    106                         GOTO 4224

000004217    105                   PUSH_LOCAL char 16
000004218    105                 ASSERT_RANGE int
000004219    105                         PUSH int 32
000004220    105                       BINARY + int 8
000004221    105                 ASSERT_RANGE char
000004222    105                      POP_REG 0
000004223    109                         GOTO 4227

000004224    108                   PUSH_LOCAL char 16
000004225    108                      POP_REG 0
000004226    109                         GOTO 4227

000004227    109                   PUSH_LOCAL interface 24
000004228    109               CHANGE_REF_CNT -- interface; POP
000004229    109                  LEAVE_FRAME
000004230    109                       RETURN 3


Function: tolower

000004231    123                  ENTER_FRAME 12
000004232    115                   PUSH_LOCAL str 16
000004233    115                 CALL_BUILTIN str len
000004234    115               PUSH_LOCAL_PTR -16
000004235    115                 SWAP; ASSIGN int 8
000004236    116                         PUSH ^ 0x557ddbacf170
000004237    116                   PUSH_LOCAL int -16
000004238    116               PUSH_LOCAL_PTR -40
000004239    116                 CALL_BUILTIN [] make
000004240    116               PUSH_LOCAL_PTR -88
000004241    116                 SWAP; ASSIGN [] 24
000004242    118                         PUSH int 0
000004243    118               PUSH_LOCAL_PTR -96
000004244    118                 SWAP; ASSIGN int 8
000004245    118                   PUSH_LOCAL int -96
000004246    118                   PUSH_LOCAL int -16
000004247    118                       BINARY < int 8
000004248    118                      GOTO_IF 4253

000004249    120                         GOTO 4266

000004250    118               PUSH_LOCAL_PTR -96
000004251    118                        UNARY ++ int
000004252    118                         GOTO 4245

000004253    119               PUSH_LOCAL_PTR -88
000004254    119                   PUSH_LOCAL int -96
000004255    119             GET_DYNARRAY_PTR
000004256    119                    PUSH_ZERO 2
000004257    119                   PUSH_LOCAL str 16
000004258    119                   PUSH_LOCAL int -96
000004259    119                GET_ARRAY_PTR char 1 -1; DEREF
000004260    119                 ASSERT_RANGE char
000004261    119                 CALL_BUILTIN char narrow
000004262    119                         CALL chartolower (4200)
000004263    119                     PUSH_REG 0
000004264    119                       ASSIGN char 1
000004265    120                         GOTO 4250

000004266    122               PUSH_LOCAL_PTR -88
000004267    122                 CALL_BUILTIN [] maketostr
000004268    122                      POP_REG 0
000004269    123                         GOTO 4270

000004270    123                   PUSH_LOCAL interface 24
000004271    123               CHANGE_REF_CNT -- interface; POP
000004272    123                   PUSH_LOCAL str 16
000004273    123               CHANGE_REF_CNT -- str; POP
000004274    123                   PUSH_LOCAL [] -88
000004275    123               CHANGE_REF_CNT -- []char; POP
000004276    123                  LEAVE_FRAME
000004277    123                       RETURN 3


Function: repeat

000004278    132                  ENTER_FRAME 3
000004279    129                         PUSH ^ 0x557ddbad4980
000004280    129               CHANGE_REF_CNT ++ str
000004281    129               PUSH_LOCAL_PTR -16
000004282    129                 SWAP; ASSIGN str 8
000004283    130                         PUSH int 0
000004284    130               PUSH_LOCAL_PTR -24
000004285    130                 SWAP; ASSIGN int 8
000004286    130                   PUSH_LOCAL int -24
000004287    130                   PUSH_LOCAL int 16
000004288    130                       BINARY < int 8
000004289    130                      GOTO_IF 4294

000004290    130                         GOTO 4306

000004291    130               PUSH_LOCAL_PTR -24
000004292    130                        UNARY ++ int
000004293    130                         GOTO 4286

000004294    130               PUSH_LOCAL_PTR -16
000004295    130                          DUP
000004296    130                        DEREF str
000004297    130                   PUSH_LOCAL str 24
000004298    130                       BINARY += str 0
000004299    130                          DUP
000004300    130               PUSH_LOCAL_PTR -32
000004301    130                 SWAP; ASSIGN str 8
000004302    130        CHANGE_REF_CNT_ASSIGN str
000004303    130                   PUSH_LOCAL str -32
000004304    130               CHANGE_REF_CNT -- str; POP
000004305    130                         GOTO 4291

000004306    131                   PUSH_LOCAL str -16
000004307    131               CHANGE_REF_CNT ++ str
000004308    131                      POP_REG 0
000004309    132                         GOTO 4310

000004310    132                   PUSH_LOCAL interface 32
000004311    132               CHANGE_REF_CNT -- interface; POP
000004312    132                   PUSH_LOCAL str 24
000004313    132               CHANGE_REF_CNT -- str; POP
000004314    132                   PUSH_LOCAL str -16
000004315    132               CHANGE_REF_CNT -- str; POP
000004316    132                  LEAVE_FRAME
000004317    132                       RETURN 4


Function: trimspaces

000004318    162                  ENTER_FRAME 3
000004319    138                   PUSH_LOCAL str 16
000004320    138                 CALL_BUILTIN str len
000004321    138                         PUSH int 0
000004322    138                       BINARY == int 8
000004323    138                      GOTO_IF 4325

000004324    140                         GOTO 4329

000004325    139                         PUSH ^ 0x557ddbb999a0
000004326    139               CHANGE_REF_CNT ++ str
000004327    139                      POP_REG 0
000004328    162                         GOTO 4410

000004329    142               PUSH_LOCAL_PTR -16
000004330    142                         ZERO 8
000004331    142               PUSH_LOCAL_PTR -24
000004332    142                         ZERO 8
000004333    144                   PUSH_LOCAL int -16
000004334    144                   PUSH_LOCAL str 16
000004335    144                 CALL_BUILTIN str len
000004336    144                       BINARY < int 8
000004337    144                          DUP
000004338    144                      POP_REG 2
000004339    144                      GOTO_IF 4341

000004340    144                         GOTO 4347

000004341    144                   PUSH_LOCAL str 16
000004342    144                   PUSH_LOCAL int -16
000004343    144                GET_ARRAY_PTR char 1 -1; DEREF
000004344    144                         PUSH int 32
000004345    144                       BINARY == char 1
000004346    144                      POP_REG 2
000004347    144                     PUSH_REG 2
000004348    144                      GOTO_IF 4351

000004349    146                         GOTO 4354

000004350    144                         GOTO 4333

000004351    145               PUSH_LOCAL_PTR -16
000004352    145                        UNARY ++ int
000004353    146                         GOTO 4350

000004354    148                   PUSH_LOCAL int -16
000004355    148                   PUSH_LOCAL str 16
000004356    148                 CALL_BUILTIN str len
000004357    148                       BINARY >= int 8
000004358    148                      GOTO_IF 4360

000004359    150                         GOTO 4364

000004360    149                         PUSH ^ 0x557ddbb9a460
000004361    149               CHANGE_REF_CNT ++ str
000004362    149                      POP_REG 0
000004363    162                         GOTO 4410

000004364    152               PUSH_LOCAL_PTR -24
000004365    152                   PUSH_LOCAL str 16
000004366    152                 CALL_BUILTIN str len
000004367    152                         PUSH int 1
000004368    152                       BINARY - int 8
000004369    152                       ASSIGN int 8
000004370    153                   PUSH_LOCAL int -24
000004371    153                         PUSH int 0
000004372    153                       BINARY >= int 8
000004373    153                          DUP
000004374    153                      POP_REG 2
000004375    153                      GOTO_IF 4377

000004376    153                         GOTO 4383

000004377    153                   PUSH_LOCAL str 16
000004378    153                   PUSH_LOCAL int -24
000004379    153                GET_ARRAY_PTR char 1 -1; DEREF
000004380    153                         PUSH int 32
000004381    153                       BINARY == char 1
000004382    153                      POP_REG 2
000004383    153                     PUSH_REG 2
000004384    153                      GOTO_IF 4387

000004385    155                         GOTO 4390

000004386    153                         GOTO 4370

000004387    154               PUSH_LOCAL_PTR -24
000004388    154                        UNARY -- int
000004389    155                         GOTO 4386

000004390    157                   PUSH_LOCAL int -24
000004391    157                   PUSH_LOCAL str 16
000004392    157                 CALL_BUILTIN str len
000004393    157                       BINARY > int 8
000004394    157                      GOTO_IF 4396

000004395    159                         GOTO 4400

000004396    158               PUSH_LOCAL_PTR -24
000004397    158                   PUSH_LOCAL str 16
000004398    158                 CALL_BUILTIN str len
000004399    158                       ASSIGN int 8
000004400    161                   PUSH_LOCAL str 16
000004401    161                   PUSH_LOCAL int -16
000004402    161                   PUSH_LOCAL int -24
000004403    161                         PUSH int 1
000004404    161                       BINARY + int 8
000004405    161                         PUSH ^ 0x557ddb9a9010
000004406    161                         PUSH ^ (nil)
000004407    161                 CALL_BUILTIN [] slice
000004408    161                      POP_REG 0
000004409    162                         GOTO 4410

000004410    162                   PUSH_LOCAL interface 24
000004411    162               CHANGE_REF_CNT -- interface; POP
000004412    162                   PUSH_LOCAL str 16
000004413    162               CHANGE_REF_CNT -- str; POP
000004414    162                  LEAVE_FRAME
000004415    162                       RETURN 3


Function: trimprefix

000004416    179                  ENTER_FRAME 2
000004417    168                         PUSH int 0
000004418    168               PUSH_LOCAL_PTR -16
000004419    168                 SWAP; ASSIGN int 8
000004420    170                   PUSH_LOCAL int -16
000004421    170                   PUSH_LOCAL str 16
000004422    170                 CALL_BUILTIN str len
000004423    170                       BINARY < int 8
000004424    170                          DUP
000004425    170                      POP_REG 2
000004426    170                      GOTO_IF 4428

000004427    170                         GOTO 4433

000004428    170                   PUSH_LOCAL int -16
000004429    170                   PUSH_LOCAL str 24
000004430    170                 CALL_BUILTIN str len
000004431    170                       BINARY < int 8
000004432    170                      POP_REG 2
000004433    170                     PUSH_REG 2
000004434    170                          DUP
000004435    170                      POP_REG 2
000004436    170                      GOTO_IF 4438

000004437    170                         GOTO 4446

000004438    170                   PUSH_LOCAL str 24
000004439    170                   PUSH_LOCAL int -16
000004440    170                GET_ARRAY_PTR char 1 -1; DEREF
000004441    170                   PUSH_LOCAL str 16
000004442    170                   PUSH_LOCAL int -16
000004443    170                GET_ARRAY_PTR char 1 -1; DEREF
000004444    170                       BINARY == char 1
000004445    170                      POP_REG 2
000004446    170                     PUSH_REG 2
000004447    170                      GOTO_IF 4450

000004448    172                         GOTO 4453

000004449    170                         GOTO 4420

000004450    171               PUSH_LOCAL_PTR -16
000004451    171                        UNARY ++ int
000004452    172                         GOTO 4449

000004453    174                   PUSH_LOCAL int -16
000004454    174                   PUSH_LOCAL str 16
000004455    174                 CALL_BUILTIN str len
000004456    174                       BINARY != int 8
000004457    174                      GOTO_IF 4459

000004458    176                         GOTO 4463

000004459    175                   PUSH_LOCAL str 24
000004460    175               CHANGE_REF_CNT ++ str
000004461    175                      POP_REG 0
000004462    179                         GOTO 4472

000004463    178                   PUSH_LOCAL str 24
000004464    178                   PUSH_LOCAL int -16
000004465    178                   PUSH_LOCAL str 24
000004466    178                 CALL_BUILTIN str len
000004467    178                         PUSH ^ 0x557ddb9a9010
000004468    178                         PUSH ^ (nil)
000004469    178                 CALL_BUILTIN [] slice
000004470    178                      POP_REG 0
000004471    179                         GOTO 4472

000004472    179                   PUSH_LOCAL interface 32
000004473    179               CHANGE_REF_CNT -- interface; POP
000004474    179                   PUSH_LOCAL str 24
000004475    179               CHANGE_REF_CNT -- str; POP
000004476    179                   PUSH_LOCAL str 16
000004477    179               CHANGE_REF_CNT -- str; POP
000004478    179                  LEAVE_FRAME
000004479    179                       RETURN 4


Function: trimsuffix

000004480    196                  ENTER_FRAME 3
000004481    185                   PUSH_LOCAL str 24
000004482    185                 CALL_BUILTIN str len
000004483    185                         PUSH int 1
000004484    185                       BINARY - int 8
000004485    185               PUSH_LOCAL_PTR -16
000004486    185                 SWAP; ASSIGN int 8
000004487    187                   PUSH_LOCAL str 16
000004488    187                 CALL_BUILTIN str len
000004489    187                         PUSH int 1
000004490    187                       BINARY - int 8
000004491    187               PUSH_LOCAL_PTR -24
000004492    187                 SWAP; ASSIGN int 8
000004493    187                   PUSH_LOCAL int -24
000004494    187                         PUSH int 0
000004495    187                       BINARY >= int 8
000004496    187                          DUP
000004497    187                      POP_REG 2
000004498    187                      GOTO_IF 4500

000004499    187                         GOTO 4504

000004500    187                   PUSH_LOCAL int -16
000004501    187                         PUSH int 0
000004502    187                       BINARY >= int 8
000004503    187                      POP_REG 2
000004504    187                     PUSH_REG 2
000004505    187                          DUP
000004506    187                      POP_REG 2
000004507    187                      GOTO_IF 4509

000004508    187                         GOTO 4517

000004509    187                   PUSH_LOCAL str 24
000004510    187                   PUSH_LOCAL int -16
000004511    187                GET_ARRAY_PTR char 1 -1; DEREF
000004512    187                   PUSH_LOCAL str 16
000004513    187                   PUSH_LOCAL int -24
000004514    187                GET_ARRAY_PTR char 1 -1; DEREF
000004515    187                       BINARY == char 1
000004516    187                      POP_REG 2
000004517    187                     PUSH_REG 2
000004518    187                      GOTO_IF 4523

000004519    189                         GOTO 4526

000004520    187               PUSH_LOCAL_PTR -24
000004521    187                        UNARY -- int
000004522    187                         GOTO 4493

000004523    188               PUSH_LOCAL_PTR -16
000004524    188                        UNARY -- int
000004525    189                         GOTO 4520

000004526    191                   PUSH_LOCAL str 24
000004527    191                 CALL_BUILTIN str len
000004528    191                         PUSH int 1
000004529    191                       BINARY - int 8
000004530    191                   PUSH_LOCAL int -16
000004531    191                       BINARY - int 8
000004532    191                   PUSH_LOCAL str 16
000004533    191                 CALL_BUILTIN str len
000004534    191                       BINARY != int 8
000004535    191                      GOTO_IF 4537

000004536    193                         GOTO 4541

000004537    192                   PUSH_LOCAL str 24
000004538    192               CHANGE_REF_CNT ++ str
000004539    192                      POP_REG 0
000004540    196                         GOTO 4551

000004541    195                   PUSH_LOCAL str 24
000004542    195                         PUSH int 0
000004543    195                   PUSH_LOCAL int -16
000004544    195                         PUSH int 1
000004545    195                       BINARY + int 8
000004546    195                         PUSH ^ 0x557ddb9a9010
000004547    195                         PUSH ^ (nil)
000004548    195                 CALL_BUILTIN [] slice
000004549    195                      POP_REG 0
000004550    196                         GOTO 4551

000004551    196                   PUSH_LOCAL interface 32
000004552    196               CHANGE_REF_CNT -- interface; POP
000004553    196                   PUSH_LOCAL str 24
000004554    196               CHANGE_REF_CNT -- str; POP
000004555    196                   PUSH_LOCAL str 16
000004556    196               CHANGE_REF_CNT -- str; POP
000004557    196                  LEAVE_FRAME
000004558    196                       RETURN 4


Module: /home/marek/dev/umlibs/tar/pak/filepath/filepath.um


Function: init

000004559     33                  ENTER_FRAME 1
000004560     22                         PUSH ^ 0x557ddbabd830
000004561     22                         PUSH int 1
000004562     22                       ASSIGN int 8
000004563     23                    PUSH_ZERO 2
000004564     23                         PUSH ^ 0x557ddbabd880
000004565     23               CHANGE_REF_CNT ++ str
000004566     23                         CALL getenv (914)
000004567     23                     PUSH_REG 0
000004568     23                          DUP
000004569     23               PUSH_LOCAL_PTR -16
000004570     23                 SWAP; ASSIGN str 8
000004571     23                         PUSH ^ 0x557ddbae7180
000004572     23                       BINARY != str 8
000004573     23                      GOTO_IF 4575

000004574     25                         GOTO 4578

000004575     24                         PUSH ^ 0x557ddbabd830
000004576     24                         PUSH int 2
000004577     24                       ASSIGN int 8
000004578     25                   PUSH_LOCAL str -16
000004579     25               CHANGE_REF_CNT -- str; POP
000004580     27                         PUSH int 0x557ddbabd830; DEREF
000004581     27                      POP_REG 2
000004582     27                         PUSH int 0
000004583     27                      POP_REG 3
000004584     28                     PUSH_REG 2
000004585     28                         PUSH int 2
000004586     28                       BINARY == int 0
000004587     28                     PUSH_REG 3
000004588     28                       BINARY | bool 0
000004589     28                      POP_REG 3
000004590     29                     PUSH_REG 3
000004591     29                      GOTO_IF 4593

000004592     30                         GOTO 4597

000004593     29                         PUSH ^ 0x557ddbb9a470
000004594     29                         PUSH int 47
000004595     29                       ASSIGN char 1
000004596     32                         GOTO 4610

000004597     30                     PUSH_REG 2
000004598     30                         PUSH int 1
000004599     30                       BINARY == int 0
000004600     30                     PUSH_REG 3
000004601     30                       BINARY | bool 0
000004602     30                      POP_REG 3
000004603     31                     PUSH_REG 3
000004604     31                      GOTO_IF 4606

000004605     32                         GOTO 4610

000004606     31                         PUSH ^ 0x557ddbb9a470
000004607     31                         PUSH int 92
000004608     31                       ASSIGN char 1
000004609     32                         GOTO 4610

000004610     33                   PUSH_LOCAL interface 16
000004611     33               CHANGE_REF_CNT -- interface; POP
000004612     33                  LEAVE_FRAME
000004613     33                       RETURN 2


Function: dir

000004614     48                  ENTER_FRAME 18
000004615     39                         PUSH int 0x557ddbabd830; DEREF
000004616     39                         PUSH int 0
000004617     39                       BINARY == int 8
000004618     39                      GOTO_IF 4620

000004619     41                         GOTO 4622

000004620     40                    PUSH_ZERO 2
000004621     40                         CALL init (4559)
000004622     43                    PUSH_ZERO 2
000004623     43                   PUSH_LOCAL str 16
000004624     43               CHANGE_REF_CNT ++ str
000004625     43                         PUSH char 0x557ddbb9a470; DEREF
000004626     43                 CALL_BUILTIN char maketostr
000004627     43               PUSH_LOCAL_PTR -40
000004628     43                         CALL split (3975)
000004629     43                     PUSH_REG 0
000004630     43               PUSH_LOCAL_PTR -88
000004631     43                 SWAP; ASSIGN [] 24
000004632     44               PUSH_LOCAL_PTR -88
000004633     44                 CALL_BUILTIN [] len
000004634     44                         PUSH int 2
000004635     44                       BINARY < int 8
000004636     44                      GOTO_IF 4638

000004637     46                         GOTO 4642

000004638     45                         PUSH ^ 0x557ddbae71c0
000004639     45               CHANGE_REF_CNT ++ str
000004640     45                      POP_REG 0
000004641     48                         GOTO 4659

000004642     47                    PUSH_ZERO 2
000004643     47               PUSH_LOCAL_PTR -88
000004644     47                         PUSH int 0
000004645     47               PUSH_LOCAL_PTR -88
000004646     47                 CALL_BUILTIN [] len
000004647     47                         PUSH int 1
000004648     47                       BINARY - int 8
000004649     47                         PUSH ^ 0x557ddbb96a70
000004650     47               PUSH_LOCAL_PTR -112
000004651     47                 CALL_BUILTIN [] slice
000004652     47                  PUSH_STRUCT 24
000004653     47                         PUSH char 0x557ddbb9a470; DEREF
000004654     47                 CALL_BUILTIN char maketostr
000004655     47                         CALL join (3840)
000004656     47                     PUSH_REG 0
000004657     47                      POP_REG 0
000004658     48                         GOTO 4659

000004659     48                   PUSH_LOCAL interface 24
000004660     48               CHANGE_REF_CNT -- interface; POP
000004661     48                   PUSH_LOCAL str 16
000004662     48               CHANGE_REF_CNT -- str; POP
000004663     48                   PUSH_LOCAL [] -88
000004664     48               CHANGE_REF_CNT -- []str; POP
000004665     48                  LEAVE_FRAME
000004666     48                       RETURN 3


Function: file

000004667     63                  ENTER_FRAME 10
000004668     54                         PUSH int 0x557ddbabd830; DEREF
000004669     54                         PUSH int 0
000004670     54                       BINARY == int 8
000004671     54                      GOTO_IF 4673

000004672     56                         GOTO 4675

000004673     55                    PUSH_ZERO 2
000004674     55                         CALL init (4559)
000004675     58                    PUSH_ZERO 2
000004676     58                   PUSH_LOCAL str 16
000004677     58               CHANGE_REF_CNT ++ str
000004678     58                         PUSH char 0x557ddbb9a470; DEREF
000004679     58                 CALL_BUILTIN char maketostr
000004680     58               PUSH_LOCAL_PTR -40
000004681     58                         CALL split (3975)
000004682     58                     PUSH_REG 0
000004683     58               PUSH_LOCAL_PTR -88
000004684     58                 SWAP; ASSIGN [] 24
000004685     59               PUSH_LOCAL_PTR -88
000004686     59                 CALL_BUILTIN [] len
000004687     59                         PUSH int 2
000004688     59                       BINARY < int 8
000004689     59                      GOTO_IF 4691

000004690     61                         GOTO 4695

000004691     60                   PUSH_LOCAL str 16
000004692     60               CHANGE_REF_CNT ++ str
000004693     60                      POP_REG 0
000004694     63                         GOTO 4704

000004695     62               PUSH_LOCAL_PTR -88
000004696     62               PUSH_LOCAL_PTR -88
000004697     62                 CALL_BUILTIN [] len
000004698     62                         PUSH int 1
000004699     62                       BINARY - int 8
000004700     62             GET_DYNARRAY_PTR str; DEREF
000004701     62               CHANGE_REF_CNT ++ str
000004702     62                      POP_REG 0
000004703     63                         GOTO 4704

000004704     63                   PUSH_LOCAL interface 24
000004705     63               CHANGE_REF_CNT -- interface; POP
000004706     63                   PUSH_LOCAL str 16
000004707     63               CHANGE_REF_CNT -- str; POP
000004708     63                   PUSH_LOCAL [] -88
000004709     63               CHANGE_REF_CNT -- []str; POP
000004710     63                  LEAVE_FRAME
000004711     63                       RETURN 3


Function: ext

000004712     75                  ENTER_FRAME 9
000004713     69                         PUSH int 0x557ddbabd830; DEREF
000004714     69                         PUSH int 0
000004715     69                       BINARY == int 8
000004716     69                      GOTO_IF 4718

000004717     71                         GOTO 4720

000004718     70                    PUSH_ZERO 2
000004719     70                         CALL init (4559)
000004720     73                    PUSH_ZERO 2
000004721     73                   PUSH_LOCAL str 16
000004722     73               CHANGE_REF_CNT ++ str
000004723     73                         PUSH ^ 0x557ddbae7200
000004724     73               CHANGE_REF_CNT ++ str
000004725     73               PUSH_LOCAL_PTR -32
000004726     73                         CALL split (3975)
000004727     73                     PUSH_REG 0
000004728     73               PUSH_LOCAL_PTR -80
000004729     73                 SWAP; ASSIGN [] 24
000004730     74               PUSH_LOCAL_PTR -80
000004731     74               PUSH_LOCAL_PTR -80
000004732     74                 CALL_BUILTIN [] len
000004733     74                         PUSH int 1
000004734     74                       BINARY - int 8
000004735     74             GET_DYNARRAY_PTR str; DEREF
000004736     74               CHANGE_REF_CNT ++ str
000004737     74                      POP_REG 0
000004738     75                         GOTO 4739

000004739     75                   PUSH_LOCAL interface 24
000004740     75               CHANGE_REF_CNT -- interface; POP
000004741     75                   PUSH_LOCAL str 16
000004742     75               CHANGE_REF_CNT -- str; POP
000004743     75                   PUSH_LOCAL [] -80
000004744     75               CHANGE_REF_CNT -- []str; POP
000004745     75                  LEAVE_FRAME
000004746     75                       RETURN 3


Function: fromslash

000004747     86                  ENTER_FRAME 2
000004748     81                         PUSH int 0x557ddbabd830; DEREF
000004749     81                         PUSH int 0
000004750     81                       BINARY == int 8
000004751     81                      GOTO_IF 4753

000004752     83                         GOTO 4755

000004753     82                    PUSH_ZERO 2
000004754     82                         CALL init (4559)
000004755     85                    PUSH_ZERO 2
000004756     85                   PUSH_LOCAL str 16
000004757     85               CHANGE_REF_CNT ++ str
000004758     85                         PUSH ^ 0x557ddbbb8c20
000004759     85               CHANGE_REF_CNT ++ str
000004760     85                         PUSH char 0x557ddbb9a470; DEREF
000004761     85                 CALL_BUILTIN char maketostr
000004762     85                         CALL replace (4094)
000004763     85                     PUSH_REG 0
000004764     85                      POP_REG 0
000004765     86                         GOTO 4766

000004766     86                   PUSH_LOCAL interface 24
000004767     86               CHANGE_REF_CNT -- interface; POP
000004768     86                   PUSH_LOCAL str 16
000004769     86               CHANGE_REF_CNT -- str; POP
000004770     86                  LEAVE_FRAME
000004771     86                       RETURN 3


Function: toslash

000004772     96                  ENTER_FRAME 2
000004773     91                         PUSH int 0x557ddbabd830; DEREF
000004774     91                         PUSH int 0
000004775     91                       BINARY == int 8
000004776     91                      GOTO_IF 4778

000004777     93                         GOTO 4780

000004778     92                    PUSH_ZERO 2
000004779     92                         CALL init (4559)
000004780     95                    PUSH_ZERO 2
000004781     95                   PUSH_LOCAL str 16
000004782     95               CHANGE_REF_CNT ++ str
000004783     95                         PUSH char 0x557ddbb9a470; DEREF
000004784     95                 CALL_BUILTIN char maketostr
000004785     95                         PUSH ^ 0x557ddbbbbfc0
000004786     95               CHANGE_REF_CNT ++ str
000004787     95                         CALL replace (4094)
000004788     95                     PUSH_REG 0
000004789     95                      POP_REG 0
000004790     96                         GOTO 4791

000004791     96                   PUSH_LOCAL interface 24
000004792     96               CHANGE_REF_CNT -- interface; POP
000004793     96                   PUSH_LOCAL str 16
000004794     96               CHANGE_REF_CNT -- str; POP
000004795     96                  LEAVE_FRAME
000004796     96                       RETURN 3


Function: join

000004797    115                  ENTER_FRAME 10
000004798    102                         PUSH int 0x557ddbabd830; DEREF
000004799    102                         PUSH int 0
000004800    102                       BINARY == int 8
000004801    102                      GOTO_IF 4803

000004802    104                         GOTO 4805

000004803    103                    PUSH_ZERO 2
000004804    103                         CALL init (4559)
000004805    106                         PUSH ^ 0x557ddbbbe450
000004806    106               CHANGE_REF_CNT ++ str
000004807    106               PUSH_LOCAL_PTR -16
000004808    106                 SWAP; ASSIGN str 8
000004809    107               PUSH_LOCAL_PTR 16
000004810    107                          DUP
000004811    107                 CALL_BUILTIN [] len
000004812    107               PUSH_LOCAL_PTR -24
000004813    107                 SWAP; ASSIGN int 8
000004814    107               PUSH_LOCAL_PTR -48
000004815    107                         ZERO 24
000004816    107               PUSH_LOCAL_PTR -48
000004817    107  SWAP; CHANGE_REF_CNT_ASSIGN []str
000004818    107               PUSH_LOCAL_PTR -56
000004819    107                         ZERO 8
000004820    107               PUSH_LOCAL_PTR -64
000004821    107                         ZERO 8
000004822    107                   PUSH_LOCAL int -56
000004823    107                   PUSH_LOCAL int -24
000004824    107                       BINARY < int 0
000004825    107                      GOTO_IF 4830

000004826    112                         GOTO 4872

000004827    107               PUSH_LOCAL_PTR -56
000004828    107                        UNARY ++ int
000004829    107                         GOTO 4822

000004830    107                   PUSH_LOCAL [] -48
000004831    107                   PUSH_LOCAL int -56
000004832    107             GET_DYNARRAY_PTR str; DEREF
000004833    107               PUSH_LOCAL_PTR -64
000004834    107  SWAP; CHANGE_REF_CNT_ASSIGN str
000004835    108               PUSH_LOCAL_PTR -16
000004836    108                          DUP
000004837    108                        DEREF str
000004838    108                   PUSH_LOCAL str -64
000004839    108                       BINARY += str 0
000004840    108                          DUP
000004841    108               PUSH_LOCAL_PTR -72
000004842    108                 SWAP; ASSIGN str 8
000004843    108        CHANGE_REF_CNT_ASSIGN str
000004844    109                   PUSH_LOCAL int -56
000004845    109               PUSH_LOCAL_PTR 16
000004846    109                 CALL_BUILTIN [] len
000004847    109                         PUSH int 1
000004848    109                       BINARY - int 8
000004849    109                       BINARY < int 8
000004850    109                      GOTO_IF 4852

000004851    111                         GOTO 4869

000004852    110               PUSH_LOCAL_PTR -16
000004853    110                          DUP
000004854    110                        DEREF str
000004855    110                         PUSH char 0x557ddbb9a470; DEREF
000004856    110                 CALL_BUILTIN char maketostr
000004857    110                          DUP
000004858    110               PUSH_LOCAL_PTR -80
000004859    110                 SWAP; ASSIGN str 8
000004860    110                       BINARY += str 0
000004861    110                          DUP
000004862    110               PUSH_LOCAL_PTR -88
000004863    110                 SWAP; ASSIGN str 8
000004864    110        CHANGE_REF_CNT_ASSIGN str
000004865    111                   PUSH_LOCAL str -80
000004866    111               CHANGE_REF_CNT -- str; POP
000004867    111                   PUSH_LOCAL str -88
000004868    111               CHANGE_REF_CNT -- str; POP
000004869    112                   PUSH_LOCAL str -72
000004870    112               CHANGE_REF_CNT -- str; POP
000004871    112                         GOTO 4827

000004872    112                   PUSH_LOCAL [] -48
000004873    112               CHANGE_REF_CNT -- []str; POP
000004874    112                   PUSH_LOCAL str -64
000004875    112               CHANGE_REF_CNT -- str; POP
000004876    114                   PUSH_LOCAL str -16
000004877    114               CHANGE_REF_CNT ++ str
000004878    114                      POP_REG 0
000004879    115                         GOTO 4880

000004880    115                   PUSH_LOCAL interface 40
000004881    115               CHANGE_REF_CNT -- interface; POP
000004882    115                   PUSH_LOCAL [] 16
000004883    115               CHANGE_REF_CNT -- []str; POP
000004884    115                   PUSH_LOCAL str -16
000004885    115               CHANGE_REF_CNT -- str; POP
000004886    115                  LEAVE_FRAME
000004887    115                       RETURN 5


Function: main

000004888    125                  ENTER_FRAME 16
000004889    118                    PUSH_ZERO 2
000004890    118                         PUSH ^ 0x557ddbbbef30
000004891    118                         PUSH ^ 0x557ddbbbef70
000004892    118                         PUSH ^ 0x557ddbbbefb0
000004893    118               PUSH_LOCAL_PTR -32
000004894    118                         ZERO 24
000004895    118               PUSH_LOCAL_PTR -16
000004896    118  SWAP; CHANGE_REF_CNT_ASSIGN str
000004897    118               PUSH_LOCAL_PTR -24
000004898    118  SWAP; CHANGE_REF_CNT_ASSIGN str
000004899    118               PUSH_LOCAL_PTR -32
000004900    118  SWAP; CHANGE_REF_CNT_ASSIGN str
000004901    118               PUSH_LOCAL_PTR -32
000004902    118                         PUSH ^ 0x557ddbbbd2a0
000004903    118                         PUSH int 3
000004904    118               PUSH_LOCAL_PTR -56
000004905    118                 CALL_BUILTIN [] makefromarr
000004906    118                  PUSH_STRUCT 24
000004907    118                         CALL join (4797)
000004908    118                     PUSH_REG 0
000004909    118               PUSH_LOCAL_PTR -96
000004910    118                 SWAP; ASSIGN str 8
000004911    119                         PUSH int 0
000004912    119                         PUSH ^ (nil)
000004913    119                         PUSH ^ 0x557ddbbbf000
000004914    119                   PUSH_LOCAL str -96
000004915    119                         PUSH ^ 0x557ddb9a9010
000004916    119                 CALL_BUILTIN str printf
000004917    119                          POP 2
000004918    119                         PUSH int 0
000004919    119                         PUSH ^ 0x557ddb99e100
000004920    119                 CALL_BUILTIN void printf
000004921    119                          POP 5
000004922    120                         PUSH int 0
000004923    120                         PUSH ^ (nil)
000004924    120                         PUSH ^ 0x557ddbbbf050
000004925    120                    PUSH_ZERO 2
000004926    120                   PUSH_LOCAL str -96
000004927    120               CHANGE_REF_CNT ++ str
000004928    120                         CALL dir (4614)
000004929    120                     PUSH_REG 0
000004930    120                          DUP
000004931    120               PUSH_LOCAL_PTR -104
000004932    120                 SWAP; ASSIGN str 8
000004933    120                         PUSH ^ 0x557ddb9a9010
000004934    120                 CALL_BUILTIN str printf
000004935    120                          POP 2
000004936    120                         PUSH int 0
000004937    120                         PUSH ^ 0x557ddb99e100
000004938    120                 CALL_BUILTIN void printf
000004939    120                          POP 5
000004940    121                         PUSH int 0
000004941    121                         PUSH ^ (nil)
000004942    121                         PUSH ^ 0x557ddbbbf0a0
000004943    121                    PUSH_ZERO 2
000004944    121                   PUSH_LOCAL str -96
000004945    121               CHANGE_REF_CNT ++ str
000004946    121                         CALL file (4667)
000004947    121                     PUSH_REG 0
000004948    121                          DUP
000004949    121               PUSH_LOCAL_PTR -112
000004950    121                 SWAP; ASSIGN str 8
000004951    121                         PUSH ^ 0x557ddb9a9010
000004952    121                 CALL_BUILTIN str printf
000004953    121                          POP 2
000004954    121                         PUSH int 0
000004955    121                         PUSH ^ 0x557ddb99e100
000004956    121                 CALL_BUILTIN void printf
000004957    121                          POP 5
000004958    122                         PUSH int 0
000004959    122                         PUSH ^ (nil)
000004960    122                         PUSH ^ 0x557ddbbbf0f0
000004961    122                    PUSH_ZERO 2
000004962    122                   PUSH_LOCAL str -96
000004963    122               CHANGE_REF_CNT ++ str
000004964    122                         CALL ext (4712)
000004965    122                     PUSH_REG 0
000004966    122                          DUP
000004967    122               PUSH_LOCAL_PTR -120
000004968    122                 SWAP; ASSIGN str 8
000004969    122                         PUSH ^ 0x557ddb9a9010
000004970    122                 CALL_BUILTIN str printf
000004971    122                          POP 2
000004972    122                         PUSH int 0
000004973    122                         PUSH ^ 0x557ddb99e100
000004974    122                 CALL_BUILTIN void printf
000004975    122                          POP 5
000004976    123                         PUSH int 0
000004977    123                         PUSH ^ (nil)
000004978    123                         PUSH ^ 0x557ddbbbf140
000004979    123                    PUSH_ZERO 2
000004980    123                   PUSH_LOCAL str -96
000004981    123               CHANGE_REF_CNT ++ str
000004982    123                         CALL fromslash (4747)
000004983    123                     PUSH_REG 0
000004984    123                          DUP
000004985    123               PUSH_LOCAL_PTR -128
000004986    123                 SWAP; ASSIGN str 8
000004987    123                         PUSH ^ 0x557ddb9a9010
000004988    123                 CALL_BUILTIN str printf
000004989    123                          POP 2
000004990    123                         PUSH int 0
000004991    123                         PUSH ^ 0x557ddb99e100
000004992    123                 CALL_BUILTIN void printf
000004993    123                          POP 5
000004994    124                         PUSH int 0
000004995    124                         PUSH ^ (nil)
000004996    124                         PUSH ^ 0x557ddbbbf190
000004997    124                    PUSH_ZERO 2
000004998    124                   PUSH_LOCAL str -96
000004999    124               CHANGE_REF_CNT ++ str
000005000    124                         CALL toslash (4772)
000005001    124                     PUSH_REG 0
000005002    124                          DUP
000005003    124               PUSH_LOCAL_PTR -136
000005004    124                 SWAP; ASSIGN str 8
000005005    124                         PUSH ^ 0x557ddb9a9010
000005006    124                 CALL_BUILTIN str printf
000005007    124                          POP 2
000005008    124                         PUSH int 0
000005009    124                         PUSH ^ 0x557ddb99e100
000005010    124                 CALL_BUILTIN void printf
000005011    124                          POP 5
000005012    125                   PUSH_LOCAL interface 16
000005013    125               CHANGE_REF_CNT -- interface; POP
000005014    125                   PUSH_LOCAL [...] -32
000005015    125               CHANGE_REF_CNT -- [3]str; POP
000005016    125                   PUSH_LOCAL str -96
000005017    125               CHANGE_REF_CNT -- str; POP
000005018    125                   PUSH_LOCAL str -104
000005019    125               CHANGE_REF_CNT -- str; POP
000005020    125                   PUSH_LOCAL str -112
000005021    125               CHANGE_REF_CNT -- str; POP
000005022    125                   PUSH_LOCAL str -120
000005023    125               CHANGE_REF_CNT -- str; POP
000005024    125                   PUSH_LOCAL str -128
000005025    125               CHANGE_REF_CNT -- str; POP
000005026    125                   PUSH_LOCAL str -136
000005027    125               CHANGE_REF_CNT -- str; POP
000005028    125                  LEAVE_FRAME
000005029    125                       RETURN 2


Module: /home/marek/dev/umlibs/tar/tar.um

000005030    210                         GOTO 5971


Function: strerror

000005031     38                  ENTER_FRAME 1
000005032     37                    PUSH_ZERO 2
000005033     37                   PUSH_LOCAL int32 16
000005034     37                 ASSERT_RANGE int32
000005035     37                 CALL_BUILTIN int32 narrow
000005036     37                         CALL <unknown> (5030)
000005037     37                     PUSH_REG 0
000005038     37                      POP_REG 0
000005039     38                         GOTO 5040

000005040     38                   PUSH_LOCAL interface 24
000005041     38               CHANGE_REF_CNT -- interface; POP
000005042     38                  LEAVE_FRAME
000005043     38                       RETURN 3

000005044    210                         GOTO 5977


Function: open

000005045     49                  ENTER_FRAME 4
000005046     46               PUSH_LOCAL_PTR -16
000005047     46                         ZERO 8
000005048     47                    PUSH_ZERO 2
000005049     47                   PUSH_LOCAL str 32
000005050     47               CHANGE_REF_CNT ++ str
000005051     47                   PUSH_LOCAL str 24
000005052     47               CHANGE_REF_CNT ++ str
000005053     47               PUSH_LOCAL_PTR -16
000005054     47               CHANGE_REF_CNT ++ ^Tar
000005055     47                         CALL <unknown> (5044)
000005056     47                     PUSH_REG 0
000005057     47               PUSH_LOCAL_PTR -20
000005058     47                 SWAP; ASSIGN int32 4
000005059     48               PUSH_LOCAL_PTR -16
000005060     48                   PUSH_LOCAL int32 -20
000005061     48               PUSH_LOCAL_PTR -40
000005062     48                         ZERO 16
000005063     48               PUSH_LOCAL_PTR -32
000005064     48                 SWAP; ASSIGN int32 4
000005065     48               PUSH_LOCAL_PTR -40
000005066     48  SWAP; CHANGE_REF_CNT_ASSIGN Tar
000005067     48               PUSH_LOCAL_PTR -40
000005068     48                   PUSH_LOCAL ^ 16
000005069     48                 SWAP; ASSIGN struct 16
000005070     48                   PUSH_LOCAL ^ 16
000005071     48               CHANGE_REF_CNT ++ { Tar Errno }
000005072     48                      POP_REG 0
000005073     49                         GOTO 5074

000005074     49                   PUSH_LOCAL interface 40
000005075     49               CHANGE_REF_CNT -- interface; POP
000005076     49                   PUSH_LOCAL str 32
000005077     49               CHANGE_REF_CNT -- str; POP
000005078     49                   PUSH_LOCAL str 24
000005079     49               CHANGE_REF_CNT -- str; POP
000005080     49                   PUSH_LOCAL struct -16
000005081     49               CHANGE_REF_CNT -- Tar; POP
000005082     49                   PUSH_LOCAL struct -40
000005083     49               CHANGE_REF_CNT -- { Tar Errno }; POP
000005084     49                  LEAVE_FRAME
000005085     49                       RETURN 5

000005086    210                         GOTO 5989


Function: openBytes

000005087     59                  ENTER_FRAME 4
000005088     56               PUSH_LOCAL_PTR -16
000005089     56                         ZERO 8
000005090     57                    PUSH_ZERO 2
000005091     57               PUSH_LOCAL_PTR 24
000005092     57               CHANGE_REF_CNT ++ ^[]uint8
000005093     57               PUSH_LOCAL_PTR -16
000005094     57               CHANGE_REF_CNT ++ ^Tar
000005095     57                         CALL <unknown> (5086)
000005096     57                     PUSH_REG 0
000005097     57               PUSH_LOCAL_PTR -20
000005098     57                 SWAP; ASSIGN int32 4
000005099     58               PUSH_LOCAL_PTR -16
000005100     58                   PUSH_LOCAL int32 -20
000005101     58               PUSH_LOCAL_PTR -40
000005102     58                         ZERO 16
000005103     58               PUSH_LOCAL_PTR -32
000005104     58                 SWAP; ASSIGN int32 4
000005105     58               PUSH_LOCAL_PTR -40
000005106     58  SWAP; CHANGE_REF_CNT_ASSIGN Tar
000005107     58               PUSH_LOCAL_PTR -40
000005108     58                   PUSH_LOCAL ^ 16
000005109     58                 SWAP; ASSIGN struct 16
000005110     58                   PUSH_LOCAL ^ 16
000005111     58               CHANGE_REF_CNT ++ { Tar Errno }
000005112     58                      POP_REG 0
000005113     59                         GOTO 5114

000005114     59                   PUSH_LOCAL interface 48
000005115     59               CHANGE_REF_CNT -- interface; POP
000005116     59                   PUSH_LOCAL [] 24
000005117     59               CHANGE_REF_CNT -- []uint8; POP
000005118     59                   PUSH_LOCAL struct -16
000005119     59               CHANGE_REF_CNT -- Tar; POP
000005120     59                   PUSH_LOCAL struct -40
000005121     59               CHANGE_REF_CNT -- { Tar Errno }; POP
000005122     59                  LEAVE_FRAME
000005123     59                       RETURN 6

000005124    210                         GOTO 5999


Function: ^Tar.close

000005125     68                  ENTER_FRAME 0
000005126     67                    PUSH_ZERO 2
000005127     67                   PUSH_LOCAL ^ 16
000005128     67                        DEREF ^
000005129     67               CHANGE_REF_CNT ++ ^struct
000005130     67                         CALL <unknown> (5124)
000005131     67                     PUSH_REG 0
000005132     67                      POP_REG 0
000005133     68                         GOTO 5134

000005134     68                   PUSH_LOCAL ^ 16
000005135     68               CHANGE_REF_CNT -- ^Tar; POP
000005136     68                  LEAVE_FRAME
000005137     68                       RETURN 1

000005138    210                         GOTO 6007


Function: ^Tar.getFiles

000005139     79                  ENTER_FRAME 14
000005140     76               PUSH_LOCAL_PTR -8
000005141     76                         ZERO 0
000005142     76               PUSH_LOCAL_PTR -8
000005143     76                         PUSH ^ 0x557ddbbe9970
000005144     76                         PUSH int 0
000005145     76               PUSH_LOCAL_PTR -32
000005146     76                 CALL_BUILTIN [] makefromarr
000005147     76               PUSH_LOCAL_PTR -80
000005148     76                 SWAP; ASSIGN [] 24
000005149     77                    PUSH_ZERO 2
000005150     77                   PUSH_LOCAL ^ 24
000005151     77                        DEREF ^
000005152     77               CHANGE_REF_CNT ++ ^struct
000005153     77               PUSH_LOCAL_PTR -80
000005154     77               CHANGE_REF_CNT ++ ^[]File
000005155     77                         PUSH ^ 0x557ddbbece80
000005156     77               CHANGE_REF_CNT ++ ^void
000005157     77                         CALL <unknown> (5138)
000005158     77                     PUSH_REG 0
000005159     77               PUSH_LOCAL_PTR -84
000005160     77                 SWAP; ASSIGN int32 4
000005161     78               PUSH_LOCAL_PTR -80
000005162     78                   PUSH_LOCAL int32 -84
000005163     78               PUSH_LOCAL_PTR -120
000005164     78                         ZERO 32
000005165     78               PUSH_LOCAL_PTR -96
000005166     78                 SWAP; ASSIGN int32 4
000005167     78               PUSH_LOCAL_PTR -120
000005168     78  SWAP; CHANGE_REF_CNT_ASSIGN []File
000005169     78               PUSH_LOCAL_PTR -120
000005170     78                   PUSH_LOCAL ^ 16
000005171     78                 SWAP; ASSIGN struct 32
000005172     78                   PUSH_LOCAL ^ 16
000005173     78               CHANGE_REF_CNT ++ { []File Errno }
000005174     78                      POP_REG 0
000005175     79                         GOTO 5176

000005176     79                   PUSH_LOCAL ^ 24
000005177     79               CHANGE_REF_CNT -- ^Tar; POP
000005178     79                   PUSH_LOCAL [...] -8
000005179     79               CHANGE_REF_CNT -- [0]File; POP
000005180     79                   PUSH_LOCAL [] -80
000005181     79               CHANGE_REF_CNT -- []File; POP
000005182     79                   PUSH_LOCAL struct -120
000005183     79               CHANGE_REF_CNT -- { []File Errno }; POP
000005184     79                  LEAVE_FRAME
000005185     79                       RETURN 2

000005186    210                         GOTO 6019


Function: ^Tar.read

000005187     90                  ENTER_FRAME 8
000005188     87               PUSH_LOCAL_PTR -32
000005189     87                         ZERO 24
000005190     88                    PUSH_ZERO 2
000005191     88                   PUSH_LOCAL ^ 32
000005192     88                        DEREF ^
000005193     88               CHANGE_REF_CNT ++ ^struct
000005194     88                   PUSH_LOCAL str 24
000005195     88               CHANGE_REF_CNT ++ str
000005196     88               PUSH_LOCAL_PTR -32
000005197     88               CHANGE_REF_CNT ++ ^[]uint8
000005198     88                         PUSH ^ 0x557ddbbf8390
000005199     88               CHANGE_REF_CNT ++ ^void
000005200     88                         CALL <unknown> (5186)
000005201     88                     PUSH_REG 0
000005202     88               PUSH_LOCAL_PTR -36
000005203     88                 SWAP; ASSIGN int32 4
000005204     89               PUSH_LOCAL_PTR -32
000005205     89                   PUSH_LOCAL int32 -36
000005206     89               PUSH_LOCAL_PTR -72
000005207     89                         ZERO 32
000005208     89               PUSH_LOCAL_PTR -48
000005209     89                 SWAP; ASSIGN int32 4
000005210     89               PUSH_LOCAL_PTR -72
000005211     89  SWAP; CHANGE_REF_CNT_ASSIGN []uint8
000005212     89               PUSH_LOCAL_PTR -72
000005213     89                   PUSH_LOCAL ^ 16
000005214     89                 SWAP; ASSIGN struct 32
000005215     89                   PUSH_LOCAL ^ 16
000005216     89               CHANGE_REF_CNT ++ { []uint8 Errno }
000005217     89                      POP_REG 0
000005218     90                         GOTO 5219

000005219     90                   PUSH_LOCAL ^ 32
000005220     90               CHANGE_REF_CNT -- ^Tar; POP
000005221     90                   PUSH_LOCAL str 24
000005222     90               CHANGE_REF_CNT -- str; POP
000005223     90                   PUSH_LOCAL [] -32
000005224     90               CHANGE_REF_CNT -- []uint8; POP
000005225     90                   PUSH_LOCAL struct -72
000005226     90               CHANGE_REF_CNT -- { []uint8 Errno }; POP
000005227     90                  LEAVE_FRAME
000005228     90                       RETURN 3


Function: ^Tar.extract

000005229    124                  ENTER_FRAME 42
000005230     96                   PUSH_LOCAL ^ 24
000005231     96               CHANGE_REF_CNT ++ ^Tar
000005232     96               PUSH_LOCAL_PTR -40
000005233     96                         CALL ^Tar.getFiles (5139)
000005234     96                     PUSH_REG 0
000005235     96                          DUP
000005236     96               PUSH_LOCAL_PTR -72
000005237     96                 SWAP; ASSIGN struct 32
000005238     96                          DUP
000005239     96                        DEREF []
000005240     96               CHANGE_REF_CNT ++ []File
000005241     96               PUSH_LOCAL_PTR -96
000005242     96                 SWAP; ASSIGN [] 24
000005243     96                          DUP
000005244     96                GET_FIELD_PTR int32 24; DEREF
000005245     96               PUSH_LOCAL_PTR -100
000005246     96                 SWAP; ASSIGN int32 4
000005247     96                          POP 1
000005248     97                   PUSH_LOCAL int32 -100
000005249     97                         PUSH int 0
000005250     97                       BINARY != int32 4
000005251     97                      GOTO_IF 5253

000005252     99                         GOTO 5256

000005253     98                   PUSH_LOCAL int32 -100
000005254     98                      POP_REG 0
000005255    124                         GOTO 5433

000005256    101                    PUSH_ZERO 2
000005257    101                   PUSH_LOCAL str 16
000005258    101               CHANGE_REF_CNT ++ str
000005259    101                         CALL mkdirp (3177)
000005260    101                     PUSH_REG 0
000005261    101                          POP 1
000005262    103                         PUSH int 0
000005263    103               PUSH_LOCAL_PTR -112
000005264    103                 SWAP; ASSIGN int 8
000005265    103                   PUSH_LOCAL int -112
000005266    103               PUSH_LOCAL_PTR -96
000005267    103                 CALL_BUILTIN [] len
000005268    103                       BINARY < int 8
000005269    103                      GOTO_IF 5274

000005270    121                         GOTO 5430

000005271    103               PUSH_LOCAL_PTR -112
000005272    103                        UNARY ++ int
000005273    103                         GOTO 5265

000005274    104                    PUSH_ZERO 2
000005275    104                   PUSH_LOCAL str 16
000005276    104               PUSH_LOCAL_PTR -96
000005277    104                   PUSH_LOCAL int -112
000005278    104             GET_DYNARRAY_PTR
000005279    104                GET_FIELD_PTR str 24; DEREF
000005280    104               PUSH_LOCAL_PTR -128
000005281    104                         ZERO 16
000005282    104               PUSH_LOCAL_PTR -120
000005283    104  SWAP; CHANGE_REF_CNT_ASSIGN str
000005284    104               PUSH_LOCAL_PTR -128
000005285    104  SWAP; CHANGE_REF_CNT_ASSIGN str
000005286    104               PUSH_LOCAL_PTR -128
000005287    104                         PUSH ^ 0x557ddbbbd2a0
000005288    104                         PUSH int 2
000005289    104               PUSH_LOCAL_PTR -152
000005290    104                 CALL_BUILTIN [] makefromarr
000005291    104                  PUSH_STRUCT 24
000005292    104                         CALL join (4797)
000005293    104                     PUSH_REG 0
000005294    104               PUSH_LOCAL_PTR -192
000005295    104                 SWAP; ASSIGN str 8
000005296    105                    PUSH_ZERO 4
000005297    105                   PUSH_LOCAL str -192
000005298    105               CHANGE_REF_CNT ++ str
000005299    105                         CALL dir (4614)
000005300    105                     PUSH_REG 0
000005301    105                         CALL mkdirp (3177)
000005302    105                     PUSH_REG 0
000005303    105                          POP 1
000005304    107                   PUSH_LOCAL ^ 24
000005305    107               CHANGE_REF_CNT ++ ^Tar
000005306    107               PUSH_LOCAL_PTR -96
000005307    107                   PUSH_LOCAL int -112
000005308    107             GET_DYNARRAY_PTR
000005309    107                GET_FIELD_PTR str 24; DEREF
000005310    107               CHANGE_REF_CNT ++ str
000005311    107               PUSH_LOCAL_PTR -232
000005312    107                         CALL ^Tar.read (5187)
000005313    107                     PUSH_REG 0
000005314    107                          DUP
000005315    107               PUSH_LOCAL_PTR -264
000005316    107                 SWAP; ASSIGN struct 32
000005317    107                          DUP
000005318    107                        DEREF []
000005319    107               CHANGE_REF_CNT ++ []uint8
000005320    107               PUSH_LOCAL_PTR -288
000005321    107                 SWAP; ASSIGN [] 24
000005322    107                          DUP
000005323    107                GET_FIELD_PTR int32 24; DEREF
000005324    107               PUSH_LOCAL_PTR -292
000005325    107                 SWAP; ASSIGN int32 4
000005326    107                          POP 1
000005327    108                   PUSH_LOCAL int32 -292
000005328    108                         PUSH int 0
000005329    108                       BINARY != int32 4
000005330    108                      GOTO_IF 5332

000005331    110                         GOTO 5343

000005332    109                   PUSH_LOCAL int32 -292
000005333    109                      POP_REG 0
000005334    109                   PUSH_LOCAL [...] -128
000005335    109               CHANGE_REF_CNT -- [2]str; POP
000005336    109                   PUSH_LOCAL str -192
000005337    109               CHANGE_REF_CNT -- str; POP
000005338    109                   PUSH_LOCAL struct -264
000005339    109               CHANGE_REF_CNT -- { []uint8 Errno }; POP
000005340    109                   PUSH_LOCAL [] -288
000005341    109               CHANGE_REF_CNT -- []uint8; POP
000005342    124                         GOTO 5433

000005343    112                    PUSH_ZERO 2
000005344    112                   PUSH_LOCAL str -192
000005345    112               CHANGE_REF_CNT ++ str
000005346    112                         CALL file (4667)
000005347    112                     PUSH_REG 0
000005348    112                          DUP
000005349    112               PUSH_LOCAL_PTR -304
000005350    112                 SWAP; ASSIGN str 8
000005351    112                         PUSH ^ 0x557ddbc06cc0
000005352    112                       BINARY == str 8
000005353    112                      GOTO_IF 5355

000005354    114                         GOTO 5366

000005355    113                   PUSH_LOCAL str -304
000005356    113               CHANGE_REF_CNT -- str; POP
000005357    113                   PUSH_LOCAL [...] -128
000005358    113               CHANGE_REF_CNT -- [2]str; POP
000005359    113                   PUSH_LOCAL str -192
000005360    113               CHANGE_REF_CNT -- str; POP
000005361    113                   PUSH_LOCAL struct -264
000005362    113               CHANGE_REF_CNT -- { []uint8 Errno }; POP
000005363    113                   PUSH_LOCAL [] -288
000005364    113               CHANGE_REF_CNT -- []uint8; POP
000005365    121                         GOTO 5429

000005366    114                   PUSH_LOCAL str -304
000005367    114               CHANGE_REF_CNT -- str; POP
000005368    116                    PUSH_ZERO 2
000005369    116                   PUSH_LOCAL str -192
000005370    116               CHANGE_REF_CNT ++ str
000005371    116                         PUSH ^ 0x557ddbc07d70
000005372    116               CHANGE_REF_CNT ++ str
000005373    116                         CALL fopen (84)
000005374    116                     PUSH_REG 0
000005375    116               PUSH_LOCAL_PTR -320
000005376    116                 SWAP; ASSIGN ^ 8
000005377    117                    PUSH_ZERO 2
000005378    117                   PUSH_LOCAL ^ -320
000005379    117               CHANGE_REF_CNT ++ File
000005380    117               PUSH_LOCAL_PTR -288
000005381    117                         PUSH ^ 0x557ddbbf3d80
000005382    117                         PUSH int 24
000005383    117                 CALL_BUILTIN ^ new
000005384    117                          DUP
000005385    117               PUSH_LOCAL_PTR -328
000005386    117                 SWAP; ASSIGN ^ 8
000005387    117                          DUP
000005388    117                      POP_REG 2
000005389    117  SWAP; CHANGE_REF_CNT_ASSIGN []uint8
000005390    117                     PUSH_REG 2
000005391    117               PUSH_LOCAL_PTR -344
000005392    117                 SWAP; ASSIGN ^ 0
000005393    117                         PUSH ^ 0x557ddbc09080
000005394    117               PUSH_LOCAL_PTR -336
000005395    117                 SWAP; ASSIGN ^ 0
000005396    117               PUSH_LOCAL_PTR -344
000005397    117               CHANGE_REF_CNT ++ interface
000005398    117                  PUSH_STRUCT 16
000005399    117                         CALL fwrite (240)
000005400    117                     PUSH_REG 0
000005401    117                          POP 1
000005402    118                    PUSH_ZERO 2
000005403    118                   PUSH_LOCAL ^ -320
000005404    118               CHANGE_REF_CNT ++ File
000005405    118                         CALL fclose (103)
000005406    118                     PUSH_REG 0
000005407    118                          POP 1
000005408    120                    PUSH_ZERO 2
000005409    120                   PUSH_LOCAL str -192
000005410    120               CHANGE_REF_CNT ++ str
000005411    120               PUSH_LOCAL_PTR -96
000005412    120                   PUSH_LOCAL int -112
000005413    120             GET_DYNARRAY_PTR uint32; DEREF
000005414    120                         CALL chmod (3508)
000005415    120                     PUSH_REG 0
000005416    120                          POP 1
000005417    121                   PUSH_LOCAL [...] -128
000005418    121               CHANGE_REF_CNT -- [2]str; POP
000005419    121                   PUSH_LOCAL str -192
000005420    121               CHANGE_REF_CNT -- str; POP
000005421    121                   PUSH_LOCAL struct -264
000005422    121               CHANGE_REF_CNT -- { []uint8 Errno }; POP
000005423    121                   PUSH_LOCAL [] -288
000005424    121               CHANGE_REF_CNT -- []uint8; POP
000005425    121                   PUSH_LOCAL ^ -320
000005426    121               CHANGE_REF_CNT -- File; POP
000005427    121                   PUSH_LOCAL ^ -328
000005428    121               CHANGE_REF_CNT -- ^[]uint8; POP
000005429    121                         GOTO 5271

000005430    123                         PUSH int 0
000005431    123                      POP_REG 0
000005432    124                         GOTO 5433

000005433    124                   PUSH_LOCAL ^ 24
000005434    124               CHANGE_REF_CNT -- ^Tar; POP
000005435    124                   PUSH_LOCAL str 16
000005436    124               CHANGE_REF_CNT -- str; POP
000005437    124                   PUSH_LOCAL struct -72
000005438    124               CHANGE_REF_CNT -- { []File Errno }; POP
000005439    124                   PUSH_LOCAL [] -96
000005440    124               CHANGE_REF_CNT -- []File; POP
000005441    124                  LEAVE_FRAME
000005442    124                       RETURN 2

000005443    210                         GOTO 6033


Function: ^Tar.addFile

000005444    134                  ENTER_FRAME 0
000005445    133                    PUSH_ZERO 2
000005446    133                   PUSH_LOCAL ^ 24
000005447    133                        DEREF ^
000005448    133               CHANGE_REF_CNT ++ ^struct
000005449    133                   PUSH_LOCAL str 16
000005450    133               CHANGE_REF_CNT ++ str
000005451    133                         CALL <unknown> (5443)
000005452    133                     PUSH_REG 0
000005453    133                      POP_REG 0
000005454    134                         GOTO 5455

000005455    134                   PUSH_LOCAL ^ 24
000005456    134               CHANGE_REF_CNT -- ^Tar; POP
000005457    134                   PUSH_LOCAL str 16
000005458    134               CHANGE_REF_CNT -- str; POP
000005459    134                  LEAVE_FRAME
000005460    134                       RETURN 2

000005461    210                         GOTO 6043


Function: ^Tar.finalize

000005462    143                  ENTER_FRAME 0
000005463    142                    PUSH_ZERO 2
000005464    142                   PUSH_LOCAL ^ 16
000005465    142                        DEREF ^
000005466    142               CHANGE_REF_CNT ++ ^struct
000005467    142                         CALL <unknown> (5461)
000005468    142                     PUSH_REG 0
000005469    142                      POP_REG 0
000005470    143                         GOTO 5471

000005471    143                   PUSH_LOCAL ^ 16
000005472    143               CHANGE_REF_CNT -- ^Tar; POP
000005473    143                  LEAVE_FRAME
000005474    143                       RETURN 1


Function: main

000005475    209                  ENTER_FRAME 48
000005476    146               PUSH_LOCAL_PTR -12
000005477    146                         ZERO 4
000005478    147               PUSH_LOCAL_PTR -24
000005479    147                         ZERO 8
000005480    149               PUSH_LOCAL_PTR -24
000005481    149               PUSH_LOCAL_PTR -12
000005482    149                    PUSH_ZERO 2
000005483    149                         PUSH ^ 0x557ddbc06c70
000005484    149               CHANGE_REF_CNT ++ str
000005485    149                         PUSH ^ 0x557ddbc08830
000005486    149               CHANGE_REF_CNT ++ str
000005487    149               PUSH_LOCAL_PTR -40
000005488    149                         CALL open (5045)
000005489    149                     PUSH_REG 0
000005490    149                          DUP
000005491    149               PUSH_LOCAL_PTR -56
000005492    149                 SWAP; ASSIGN struct 16
000005493    149                          DUP
000005494    149                      POP_REG 5
000005495    149                GET_FIELD_PTR int32 8; DEREF
000005496    149                       ASSIGN int32 4
000005497    149                     PUSH_REG 5
000005498    149                          DUP
000005499    149                      POP_REG 5
000005500    149                        DEREF struct
000005501    149        CHANGE_REF_CNT_ASSIGN Tar
000005502    149                     PUSH_REG 5
000005503    149                          POP 1
000005504    150                   PUSH_LOCAL int32 -12
000005505    150                         PUSH int 0
000005506    150                       BINARY != int32 4
000005507    150                      GOTO_IF 5509

000005508    153                         GOTO 5533

000005509    151                         PUSH int 0
000005510    151                         PUSH ^ (nil)
000005511    151                         PUSH ^ 0x557ddbbd5290
000005512    151                    PUSH_ZERO 2
000005513    151                   PUSH_LOCAL int32 -12
000005514    151                 ASSERT_RANGE int32
000005515    151                 CALL_BUILTIN int32 narrow
000005516    151                         CALL strerror (5031)
000005517    151                     PUSH_REG 0
000005518    151                          DUP
000005519    151               PUSH_LOCAL_PTR -64
000005520    151                 SWAP; ASSIGN str 8
000005521    151                         PUSH ^ 0x557ddb9a9010
000005522    151                 CALL_BUILTIN str printf
000005523    151                          POP 2
000005524    151                         PUSH int 0
000005525    151                         PUSH ^ 0x557ddb99e100
000005526    151                 CALL_BUILTIN void printf
000005527    151                          POP 5
000005528    152                   PUSH_LOCAL str -64
000005529    152               CHANGE_REF_CNT -- str; POP
000005530    209                         GOTO 5949

000005531    153                   PUSH_LOCAL str -64
000005532    153               CHANGE_REF_CNT -- str; POP
000005533    155               PUSH_LOCAL_PTR -24
000005534    155               CHANGE_REF_CNT ++ ^Tar
000005535    155                         PUSH ^ 0x557ddbbead70
000005536    155               CHANGE_REF_CNT ++ str
000005537    155                         CALL ^Tar.addFile (5444)
000005538    155                     PUSH_REG 0
000005539    155                          POP 1
000005540    156               PUSH_LOCAL_PTR -24
000005541    156               CHANGE_REF_CNT ++ ^Tar
000005542    156                         PUSH ^ 0x557ddbc1ae70
000005543    156               CHANGE_REF_CNT ++ str
000005544    156                         CALL ^Tar.addFile (5444)
000005545    156                     PUSH_REG 0
000005546    156                          POP 1
000005547    157               PUSH_LOCAL_PTR -24
000005548    157               CHANGE_REF_CNT ++ ^Tar
000005549    157                         PUSH ^ 0x557ddbc1bf20
000005550    157               CHANGE_REF_CNT ++ str
000005551    157                         CALL ^Tar.addFile (5444)
000005552    157                     PUSH_REG 0
000005553    157                          POP 1
000005554    159               PUSH_LOCAL_PTR -12
000005555    159               PUSH_LOCAL_PTR -24
000005556    159               CHANGE_REF_CNT ++ ^Tar
000005557    159                         CALL ^Tar.finalize (5462)
000005558    159                     PUSH_REG 0
000005559    159                       ASSIGN int32 4
000005560    160                   PUSH_LOCAL int32 -12
000005561    160                         PUSH int 0
000005562    160                       BINARY != int32 4
000005563    160                      GOTO_IF 5565

000005564    163                         GOTO 5589

000005565    161                         PUSH int 0
000005566    161                         PUSH ^ (nil)
000005567    161                         PUSH ^ 0x557ddbc1e030
000005568    161                    PUSH_ZERO 2
000005569    161                   PUSH_LOCAL int32 -12
000005570    161                 ASSERT_RANGE int32
000005571    161                 CALL_BUILTIN int32 narrow
000005572    161                         CALL strerror (5031)
000005573    161                     PUSH_REG 0
000005574    161                          DUP
000005575    161               PUSH_LOCAL_PTR -72
000005576    161                 SWAP; ASSIGN str 8
000005577    161                         PUSH ^ 0x557ddb9a9010
000005578    161                 CALL_BUILTIN str printf
000005579    161                          POP 2
000005580    161                         PUSH int 0
000005581    161                         PUSH ^ 0x557ddb99e100
000005582    161                 CALL_BUILTIN void printf
000005583    161                          POP 5
000005584    162                   PUSH_LOCAL str -72
000005585    162               CHANGE_REF_CNT -- str; POP
000005586    209                         GOTO 5949

000005587    163                   PUSH_LOCAL str -72
000005588    163               CHANGE_REF_CNT -- str; POP
000005589    165               PUSH_LOCAL_PTR -12
000005590    165               PUSH_LOCAL_PTR -24
000005591    165               CHANGE_REF_CNT ++ ^Tar
000005592    165                         CALL ^Tar.close (5125)
000005593    165                     PUSH_REG 0
000005594    165                       ASSIGN int32 4
000005595    166                   PUSH_LOCAL int32 -12
000005596    166                         PUSH int 0
000005597    166                       BINARY != int32 4
000005598    166                      GOTO_IF 5600

000005599    169                         GOTO 5624

000005600    167                         PUSH int 0
000005601    167                         PUSH ^ (nil)
000005602    167                         PUSH ^ 0x557ddbc20980
000005603    167                    PUSH_ZERO 2
000005604    167                   PUSH_LOCAL int32 -12
000005605    167                 ASSERT_RANGE int32
000005606    167                 CALL_BUILTIN int32 narrow
000005607    167                         CALL strerror (5031)
000005608    167                     PUSH_REG 0
000005609    167                          DUP
000005610    167               PUSH_LOCAL_PTR -80
000005611    167                 SWAP; ASSIGN str 8
000005612    167                         PUSH ^ 0x557ddb9a9010
000005613    167                 CALL_BUILTIN str printf
000005614    167                          POP 2
000005615    167                         PUSH int 0
000005616    167                         PUSH ^ 0x557ddb99e100
000005617    167                 CALL_BUILTIN void printf
000005618    167                          POP 5
000005619    168                   PUSH_LOCAL str -80
000005620    168               CHANGE_REF_CNT -- str; POP
000005621    209                         GOTO 5949

000005622    169                   PUSH_LOCAL str -80
000005623    169               CHANGE_REF_CNT -- str; POP
000005624    171               PUSH_LOCAL_PTR -24
000005625    171               PUSH_LOCAL_PTR -12
000005626    171                    PUSH_ZERO 2
000005627    171                         PUSH ^ 0x557ddbc22ce0
000005628    171               CHANGE_REF_CNT ++ str
000005629    171                         PUSH ^ 0x557ddbc23560
000005630    171               CHANGE_REF_CNT ++ str
000005631    171               PUSH_LOCAL_PTR -96
000005632    171                         CALL open (5045)
000005633    171                     PUSH_REG 0
000005634    171                          DUP
000005635    171               PUSH_LOCAL_PTR -112
000005636    171                 SWAP; ASSIGN struct 16
000005637    171                          DUP
000005638    171                      POP_REG 5
000005639    171                GET_FIELD_PTR int32 8; DEREF
000005640    171                       ASSIGN int32 4
000005641    171                     PUSH_REG 5
000005642    171                          DUP
000005643    171                      POP_REG 5
000005644    171                        DEREF struct
000005645    171        CHANGE_REF_CNT_ASSIGN Tar
000005646    171                     PUSH_REG 5
000005647    171                          POP 1
000005648    172                   PUSH_LOCAL int32 -12
000005649    172                         PUSH int 0
000005650    172                       BINARY != int32 4
000005651    172                      GOTO_IF 5653

000005652    175                         GOTO 5677

000005653    173                         PUSH int 0
000005654    173                         PUSH ^ (nil)
000005655    173                         PUSH ^ 0x557ddbc24600
000005656    173                    PUSH_ZERO 2
000005657    173                   PUSH_LOCAL int32 -12
000005658    173                 ASSERT_RANGE int32
000005659    173                 CALL_BUILTIN int32 narrow
000005660    173                         CALL strerror (5031)
000005661    173                     PUSH_REG 0
000005662    173                          DUP
000005663    173               PUSH_LOCAL_PTR -120
000005664    173                 SWAP; ASSIGN str 8
000005665    173                         PUSH ^ 0x557ddb9a9010
000005666    173                 CALL_BUILTIN str printf
000005667    173                          POP 2
000005668    173                         PUSH int 0
000005669    173                         PUSH ^ 0x557ddb99e100
000005670    173                 CALL_BUILTIN void printf
000005671    173                          POP 5
000005672    174                   PUSH_LOCAL str -120
000005673    174               CHANGE_REF_CNT -- str; POP
000005674    209                         GOTO 5949

000005675    175                   PUSH_LOCAL str -120
000005676    175               CHANGE_REF_CNT -- str; POP
000005677    177               PUSH_LOCAL_PTR -144
000005678    177                         ZERO 24
000005679    178               PUSH_LOCAL_PTR -144
000005680    178               PUSH_LOCAL_PTR -12
000005681    178               PUSH_LOCAL_PTR -24
000005682    178               CHANGE_REF_CNT ++ ^Tar
000005683    178               PUSH_LOCAL_PTR -176
000005684    178                         CALL ^Tar.getFiles (5139)
000005685    178                     PUSH_REG 0
000005686    178                          DUP
000005687    178               PUSH_LOCAL_PTR -208
000005688    178                 SWAP; ASSIGN struct 32
000005689    178                          DUP
000005690    178                      POP_REG 5
000005691    178                GET_FIELD_PTR int32 24; DEREF
000005692    178                       ASSIGN int32 4
000005693    178                     PUSH_REG 5
000005694    178                          DUP
000005695    178                      POP_REG 5
000005696    178                        DEREF []
000005697    178        CHANGE_REF_CNT_ASSIGN []File
000005698    178                     PUSH_REG 5
000005699    178                          POP 1
000005700    179                   PUSH_LOCAL int32 -12
000005701    179                         PUSH int 0
000005702    179                       BINARY != int32 4
000005703    179                      GOTO_IF 5705

000005704    182                         GOTO 5729

000005705    180                         PUSH int 0
000005706    180                         PUSH ^ (nil)
000005707    180                         PUSH ^ 0x557ddbc28490
000005708    180                    PUSH_ZERO 2
000005709    180                   PUSH_LOCAL int32 -12
000005710    180                 ASSERT_RANGE int32
000005711    180                 CALL_BUILTIN int32 narrow
000005712    180                         CALL strerror (5031)
000005713    180                     PUSH_REG 0
000005714    180                          DUP
000005715    180               PUSH_LOCAL_PTR -216
000005716    180                 SWAP; ASSIGN str 8
000005717    180                         PUSH ^ 0x557ddb9a9010
000005718    180                 CALL_BUILTIN str printf
000005719    180                          POP 2
000005720    180                         PUSH int 0
000005721    180                         PUSH ^ 0x557ddb99e100
000005722    180                 CALL_BUILTIN void printf
000005723    180                          POP 5
000005724    181                   PUSH_LOCAL str -216
000005725    181               CHANGE_REF_CNT -- str; POP
000005726    209                         GOTO 5949

000005727    182                   PUSH_LOCAL str -216
000005728    182               CHANGE_REF_CNT -- str; POP
000005729    184                         PUSH int 0
000005730    184                         PUSH ^ (nil)
000005731    184                         PUSH ^ 0x557ddbc296a0
000005732    184                         PUSH int 0
000005733    184                         PUSH ^ 0x557ddb99e100
000005734    184                 CALL_BUILTIN void printf
000005735    184                          POP 5
000005736    185               PUSH_LOCAL_PTR -144
000005737    185                          DUP
000005738    185                 CALL_BUILTIN [] len
000005739    185               PUSH_LOCAL_PTR -224
000005740    185                 SWAP; ASSIGN int 8
000005741    185                          POP 1
000005742    185               PUSH_LOCAL_PTR -232
000005743    185                         ZERO 8
000005744    185                   PUSH_LOCAL int -232
000005745    185                   PUSH_LOCAL int -224
000005746    185                       BINARY < int 0
000005747    185                      GOTO_IF 5752

000005748    187                         GOTO 5767

000005749    185               PUSH_LOCAL_PTR -232
000005750    185                        UNARY ++ int
000005751    185                         GOTO 5744

000005752    186                         PUSH int 0
000005753    186                         PUSH ^ (nil)
000005754    186                         PUSH ^ 0x557ddbc2a070
000005755    186               PUSH_LOCAL_PTR -144
000005756    186                   PUSH_LOCAL int -232
000005757    186             GET_DYNARRAY_PTR
000005758    186                GET_FIELD_PTR str 24; DEREF
000005759    186                         PUSH ^ 0x557ddb9a9010
000005760    186                 CALL_BUILTIN str printf
000005761    186                          POP 2
000005762    186                         PUSH int 0
000005763    186                         PUSH ^ 0x557ddb99e100
000005764    186                 CALL_BUILTIN void printf
000005765    186                          POP 5
000005766    187                         GOTO 5749

000005767    189                         PUSH int 0
000005768    189                         PUSH ^ (nil)
000005769    189                         PUSH ^ 0x557ddbc2c170
000005770    189                         PUSH int 0
000005771    189                         PUSH ^ 0x557ddb99e100
000005772    189                 CALL_BUILTIN void printf
000005773    189                          POP 5
000005774    190               PUSH_LOCAL_PTR -256
000005775    190                         ZERO 24
000005776    191               PUSH_LOCAL_PTR -256
000005777    191               PUSH_LOCAL_PTR -12
000005778    191               PUSH_LOCAL_PTR -24
000005779    191               CHANGE_REF_CNT ++ ^Tar
000005780    191                         PUSH ^ 0x557ddbc2ee40
000005781    191               CHANGE_REF_CNT ++ str
000005782    191               PUSH_LOCAL_PTR -288
000005783    191                         CALL ^Tar.read (5187)
000005784    191                     PUSH_REG 0
000005785    191                          DUP
000005786    191               PUSH_LOCAL_PTR -320
000005787    191                 SWAP; ASSIGN struct 32
000005788    191                          DUP
000005789    191                      POP_REG 5
000005790    191                GET_FIELD_PTR int32 24; DEREF
000005791    191                       ASSIGN int32 4
000005792    191                     PUSH_REG 5
000005793    191                          DUP
000005794    191                      POP_REG 5
000005795    191                        DEREF []
000005796    191        CHANGE_REF_CNT_ASSIGN []uint8
000005797    191                     PUSH_REG 5
000005798    191                          POP 1
000005799    192                   PUSH_LOCAL int32 -12
000005800    192                         PUSH int 0
000005801    192                       BINARY != int32 4
000005802    192                      GOTO_IF 5804

000005803    195                         GOTO 5828

000005804    193                         PUSH int 0
000005805    193                         PUSH ^ (nil)
000005806    193                         PUSH ^ 0x557ddbc30040
000005807    193                    PUSH_ZERO 2
000005808    193                   PUSH_LOCAL int32 -12
000005809    193                 ASSERT_RANGE int32
000005810    193                 CALL_BUILTIN int32 narrow
000005811    193                         CALL strerror (5031)
000005812    193                     PUSH_REG 0
000005813    193                          DUP
000005814    193               PUSH_LOCAL_PTR -328
000005815    193                 SWAP; ASSIGN str 8
000005816    193                         PUSH ^ 0x557ddb9a9010
000005817    193                 CALL_BUILTIN str printf
000005818    193                          POP 2
000005819    193                         PUSH int 0
000005820    193                         PUSH ^ 0x557ddb99e100
000005821    193                 CALL_BUILTIN void printf
000005822    193                          POP 5
000005823    194                   PUSH_LOCAL str -328
000005824    194               CHANGE_REF_CNT -- str; POP
000005825    209                         GOTO 5949

000005826    195                   PUSH_LOCAL str -328
000005827    195               CHANGE_REF_CNT -- str; POP
000005828    196                         PUSH int 0
000005829    196                         PUSH ^ (nil)
000005830    196                         PUSH ^ 0x557ddbc31250
000005831    196               PUSH_LOCAL_PTR -256
000005832    196                          DUP
000005833    196                 CALL_BUILTIN [] len
000005834    196               PUSH_LOCAL_PTR -336
000005835    196                 SWAP; ASSIGN int 0
000005836    196               PUSH_LOCAL_PTR -360
000005837    196                         ZERO 24
000005838    196                         PUSH ^ 0x557ddbc31a90
000005839    196                   PUSH_LOCAL int -336
000005840    196               PUSH_LOCAL_PTR -360
000005841    196                 CALL_BUILTIN [] make
000005842    196                          POP 1
000005843    196                   PUSH_LOCAL int -336
000005844    196                         PUSH int 1
000005845    196                       BINARY - int 0
000005846    196               PUSH_LOCAL_PTR -368
000005847    196                 SWAP; ASSIGN int 0
000005848    196                   PUSH_LOCAL int -368
000005849    196                         PUSH int 0
000005850    196                       BINARY >= int 0
000005851    196                      GOTO_IF 5853

000005852    196                         GOTO 5864

000005853    196                          DUP
000005854    196                   PUSH_LOCAL int -368
000005855    196             GET_DYNARRAY_PTR uint8; DEREF
000005856    196                 ASSERT_RANGE char
000005857    196                   PUSH_LOCAL [] -360
000005858    196                   PUSH_LOCAL int -368
000005859    196             GET_DYNARRAY_PTR
000005860    196                 SWAP; ASSIGN char 1
000005861    196               PUSH_LOCAL_PTR -368
000005862    196                        UNARY -- int
000005863    196                         GOTO 5848

000005864    196                          POP 1
000005865    196                   PUSH_LOCAL [] -360
000005866    196                 CALL_BUILTIN [] maketostr
000005867    196                          DUP
000005868    196               PUSH_LOCAL_PTR -376
000005869    196                 SWAP; ASSIGN str 8
000005870    196                         PUSH ^ 0x557ddb9a9010
000005871    196                 CALL_BUILTIN str printf
000005872    196                          POP 2
000005873    196                         PUSH int 0
000005874    196                         PUSH ^ 0x557ddb99e100
000005875    196                 CALL_BUILTIN void printf
000005876    196                          POP 5
000005877    198               PUSH_LOCAL_PTR -12
000005878    198               PUSH_LOCAL_PTR -24
000005879    198               CHANGE_REF_CNT ++ ^Tar
000005880    198                         PUSH ^ 0x557ddbc334a0
000005881    198               CHANGE_REF_CNT ++ str
000005882    198                         CALL ^Tar.extract (5229)
000005883    198                     PUSH_REG 0
000005884    198                       ASSIGN int32 4
000005885    199                   PUSH_LOCAL int32 -12
000005886    199                         PUSH int 0
000005887    199                       BINARY != int32 4
000005888    199                      GOTO_IF 5890

000005889    202                         GOTO 5914

000005890    200                         PUSH int 0
000005891    200                         PUSH ^ (nil)
000005892    200                         PUSH ^ 0x557ddbc34550
000005893    200                    PUSH_ZERO 2
000005894    200                   PUSH_LOCAL int32 -12
000005895    200                 ASSERT_RANGE int32
000005896    200                 CALL_BUILTIN int32 narrow
000005897    200                         CALL strerror (5031)
000005898    200                     PUSH_REG 0
000005899    200                          DUP
000005900    200               PUSH_LOCAL_PTR -384
000005901    200                 SWAP; ASSIGN str 8
000005902    200                         PUSH ^ 0x557ddb9a9010
000005903    200                 CALL_BUILTIN str printf
000005904    200                          POP 2
000005905    200                         PUSH int 0
000005906    200                         PUSH ^ 0x557ddb99e100
000005907    200                 CALL_BUILTIN void printf
000005908    200                          POP 5
000005909    201                   PUSH_LOCAL str -384
000005910    201               CHANGE_REF_CNT -- str; POP
000005911    209                         GOTO 5949

000005912    202                   PUSH_LOCAL str -384
000005913    202               CHANGE_REF_CNT -- str; POP
000005914    204               PUSH_LOCAL_PTR -12
000005915    204               PUSH_LOCAL_PTR -24
000005916    204               CHANGE_REF_CNT ++ ^Tar
000005917    204                         CALL ^Tar.close (5125)
000005918    204                     PUSH_REG 0
000005919    204                       ASSIGN int32 4
000005920    205                   PUSH_LOCAL int32 -12
000005921    205                         PUSH int 0
000005922    205                       BINARY != int32 4
000005923    205                      GOTO_IF 5925

000005924    208                         GOTO 5949

000005925    206                         PUSH int 0
000005926    206                         PUSH ^ (nil)
000005927    206                         PUSH ^ 0x557ddbc36ff0
000005928    206                    PUSH_ZERO 2
000005929    206                   PUSH_LOCAL int32 -12
000005930    206                 ASSERT_RANGE int32
000005931    206                 CALL_BUILTIN int32 narrow
000005932    206                         CALL strerror (5031)
000005933    206                     PUSH_REG 0
000005934    206                          DUP
000005935    206               PUSH_LOCAL_PTR -392
000005936    206                 SWAP; ASSIGN str 8
000005937    206                         PUSH ^ 0x557ddb9a9010
000005938    206                 CALL_BUILTIN str printf
000005939    206                          POP 2
000005940    206                         PUSH int 0
000005941    206                         PUSH ^ 0x557ddb99e100
000005942    206                 CALL_BUILTIN void printf
000005943    206                          POP 5
000005944    207                   PUSH_LOCAL str -392
000005945    207               CHANGE_REF_CNT -- str; POP
000005946    209                         GOTO 5949

000005947    208                   PUSH_LOCAL str -392
000005948    208               CHANGE_REF_CNT -- str; POP
000005949    209                   PUSH_LOCAL interface 16
000005950    209               CHANGE_REF_CNT -- interface; POP
000005951    209                   PUSH_LOCAL struct -24
000005952    209               CHANGE_REF_CNT -- Tar; POP
000005953    209                   PUSH_LOCAL struct -56
000005954    209               CHANGE_REF_CNT -- { Tar Errno }; POP
000005955    209                   PUSH_LOCAL struct -112
000005956    209               CHANGE_REF_CNT -- { Tar Errno }; POP
000005957    209                   PUSH_LOCAL [] -144
000005958    209               CHANGE_REF_CNT -- []File; POP
000005959    209                   PUSH_LOCAL struct -208
000005960    209               CHANGE_REF_CNT -- { []File Errno }; POP
000005961    209                   PUSH_LOCAL [] -256
000005962    209               CHANGE_REF_CNT -- []uint8; POP
000005963    209                   PUSH_LOCAL struct -320
000005964    209               CHANGE_REF_CNT -- { []uint8 Errno }; POP
000005965    209                   PUSH_LOCAL [] -360
000005966    209               CHANGE_REF_CNT -- []char; POP
000005967    209                   PUSH_LOCAL str -376
000005968    209               CHANGE_REF_CNT -- str; POP
000005969    209                  LEAVE_FRAME
000005970    209                       RETURN 2


Function: <unknown>

000005971    210                  ENTER_FRAME 0
000005972    210                  CALL_EXTERN 0x7f8e6aeabcc9
000005973    210                   PUSH_LOCAL interface 24
000005974    210               CHANGE_REF_CNT -- interface; POP
000005975    210                  LEAVE_FRAME
000005976    210                       RETURN 3


Function: <unknown>

000005977    210                  ENTER_FRAME 0
000005978    210                  CALL_EXTERN 0x7f8e6aeabd18
000005979    210                   PUSH_LOCAL interface 40
000005980    210               CHANGE_REF_CNT -- interface; POP
000005981    210                   PUSH_LOCAL str 32
000005982    210               CHANGE_REF_CNT -- str; POP
000005983    210                   PUSH_LOCAL str 24
000005984    210               CHANGE_REF_CNT -- str; POP
000005985    210                   PUSH_LOCAL ^ 16
000005986    210               CHANGE_REF_CNT -- ^Tar; POP
000005987    210                  LEAVE_FRAME
000005988    210                       RETURN 5


Function: <unknown>

000005989    210                  ENTER_FRAME 0
000005990    210                  CALL_EXTERN 0x7f8e6aeabe91
000005991    210                   PUSH_LOCAL interface 32
000005992    210               CHANGE_REF_CNT -- interface; POP
000005993    210                   PUSH_LOCAL ^ 24
000005994    210               CHANGE_REF_CNT -- ^[]uint8; POP
000005995    210                   PUSH_LOCAL ^ 16
000005996    210               CHANGE_REF_CNT -- ^Tar; POP
000005997    210                  LEAVE_FRAME
000005998    210                       RETURN 4


Function: <unknown>

000005999    210                  ENTER_FRAME 0
000006000    210                  CALL_EXTERN 0x7f8e6aeac5cf
000006001    210                   PUSH_LOCAL interface 24
000006002    210               CHANGE_REF_CNT -- interface; POP
000006003    210                   PUSH_LOCAL ^ 16
000006004    210               CHANGE_REF_CNT -- ^struct; POP
000006005    210                  LEAVE_FRAME
000006006    210                       RETURN 3


Function: <unknown>

000006007    210                  ENTER_FRAME 0
000006008    210                  CALL_EXTERN 0x7f8e6aeabfac
000006009    210                   PUSH_LOCAL interface 40
000006010    210               CHANGE_REF_CNT -- interface; POP
000006011    210                   PUSH_LOCAL ^ 32
000006012    210               CHANGE_REF_CNT -- ^struct; POP
000006013    210                   PUSH_LOCAL ^ 24
000006014    210               CHANGE_REF_CNT -- ^[]File; POP
000006015    210                   PUSH_LOCAL ^ 16
000006016    210               CHANGE_REF_CNT -- ^void; POP
000006017    210                  LEAVE_FRAME
000006018    210                       RETURN 5


Function: <unknown>

000006019    210                  ENTER_FRAME 0
000006020    210                  CALL_EXTERN 0x7f8e6aeac236
000006021    210                   PUSH_LOCAL interface 48
000006022    210               CHANGE_REF_CNT -- interface; POP
000006023    210                   PUSH_LOCAL ^ 40
000006024    210               CHANGE_REF_CNT -- ^struct; POP
000006025    210                   PUSH_LOCAL str 32
000006026    210               CHANGE_REF_CNT -- str; POP
000006027    210                   PUSH_LOCAL ^ 24
000006028    210               CHANGE_REF_CNT -- ^[]uint8; POP
000006029    210                   PUSH_LOCAL ^ 16
000006030    210               CHANGE_REF_CNT -- ^void; POP
000006031    210                  LEAVE_FRAME
000006032    210                       RETURN 6


Function: <unknown>

000006033    210                  ENTER_FRAME 0
000006034    210                  CALL_EXTERN 0x7f8e6aeac396
000006035    210                   PUSH_LOCAL interface 32
000006036    210               CHANGE_REF_CNT -- interface; POP
000006037    210                   PUSH_LOCAL ^ 24
000006038    210               CHANGE_REF_CNT -- ^struct; POP
000006039    210                   PUSH_LOCAL str 16
000006040    210               CHANGE_REF_CNT -- str; POP
000006041    210                  LEAVE_FRAME
000006042    210                       RETURN 4


Function: <unknown>

000006043    210                  ENTER_FRAME 0
000006044    210                  CALL_EXTERN 0x7f8e6aeac607
000006045    210                   PUSH_LOCAL interface 24
000006046    210               CHANGE_REF_CNT -- interface; POP
000006047    210                   PUSH_LOCAL ^ 16
000006048    210               CHANGE_REF_CNT -- ^struct; POP
000006049    210                  LEAVE_FRAME
000006050    210                       RETURN 3

000006051    210                    PUSH_ZERO 2
000006052    210                         CALL main (5475)
000006053    210                         PUSH [...] 0x557ddb99e0e0; DEREF
000006054    210               CHANGE_REF_CNT -- [1]str; POP
000006055    210                         HALT