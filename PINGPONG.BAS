    10 CLS 
    20 DIM WX%(15),WY%(15)
    30 DIM WT%(15),WU%(15)
    40 DIM WV%(15),WW%(15)
    50 A%=$EC:C%=7:X%=0:Y%=0:V%=0:W%=0
    60 R%=0:FOR I%=0 TO C%
    70 USR($8007):WX%(I%)=AND(R%,31)
    75 USR($8007):WY%(I%)=AND(R%,15)
    80 WT%(I%)=1:WU%(I%)=1
    90 NEXT I%
   100 Z%=PEEK($F150)-1
   110 FOR I%=0 TO C%
   120 WV%(I%)=WX%(I%):V%=WV%(I%)
   125 WW%(I%)=WY%(I%):W%=WW%(I%)
   130 WX%(I%)=WX%(I%)+WT%(I%)
   140 WY%(I%)=WY%(I%)+WU%(I%)
   145 X%=WX%(I%):Y%=WY%(I%)
   150 IF (X%=0)+(X%=Z%)THEN GOSUB *X
   160 IF (Y%=0)+(Y%=24)THEN GOSUB *Y
   170 USR($8004)
   171 NEXT I%
   180 GOTO 110
   190 *X
   200 WT%(I%)=-WT%(I%):GOSUB *P:RETURN 
   210 *Y
   220 WU%(I%)=-WU%(I%):GOSUB *P:RETURN 
   230 *P
   240 FOR J%=12 TO 0 STEP -1
   250 OUT $98,$DF:OUT $98,$FF:NEXT J%
   260 FOR J%=4 TO 0 STEP -1
   270 OUT $98,$DF:A%=A%
   280 OUT $98,$FF:A%=A%:NEXT J%:RETURN 
