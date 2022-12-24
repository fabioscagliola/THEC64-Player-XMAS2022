100 PRINT CHR$(147)
110 PRINT "xmas 2022"
120 PRINT "white christmas"
130 PRINT "by irving berlin"

140 REM **** PLAYER ****

150 S = 54272
160 FOR T = 0 TO 24 : POKE S + T, 0 : NEXT
170 POKE S + 24, 15
180 TM = 1975 * 2
190 WF = 16
200 A = 2 ^ (1 / 12)
210 POKE S + 5,  3 * 16 + 7
220 POKE S + 6, 10 * 16 + 9
230 READ A$, LT
240 IF A$ = "end" THEN END
250 NO$ = LEFT$(A$, 1)
260 SH$ = MID$(A$, 2, 1)
270 OCT = VAL(MID$(A$, 3, 1))
280 N = 2 * (ASC(NO$) - 65) - 1
290 IF NO$ = "p" THEN DR = INT(TM / LT) : GOTO 450
300 IF NO$ = "f" THEN N = N - 1 : GOTO 340
310 IF NO$ = "g" THEN N = N - 1 : GOTO 340
320 IF NO$ = "a" THEN N = 12 : GOTO 340
330 IF NO$ = "b" THEN N = 14
340 IF SH$ = "#" THEN N = N + 1
350 FS = INT((466 * A ^ N) * 2 ^ OCT)
360 FH = INT(FS / 256)
370 FL = FS - 256 * FH
380 POKE S, FL
390 POKE S + 1, FH
400 DR = INT(TM / LT)
410 POKE S + 4, WF + 1
420 FOR T = 1 TO DR : NEXT
430 POKE S + 4, WF
440 GOTO 230
450 FOR T = 1 TO DR : NEXT
460 GOTO 230

470 REM **** SONG DATA ****

480 REM
490 REM Duration
500 REM
510 REM 1      4
520 REM 1/2.   6
530 REM 1/2    8
540 REM 1/4.  12
550 REM 1/4   16
560 REM 1/8.  24
570 REM 1/8   32
580 REM

590 DATA "e 3",  4
600 DATA "f 3", 16, "e 3", 16, "d#3", 16, "e 3", 16
610 DATA "f 3",  4
620 DATA "f#3", 16, "g 3",  6
630 DATA "a 3",  8, "b 3", 16, "c 4", 16
640 DATA "d 4", 16, "c 4", 16, "b 3", 16, "a 3", 16
650 DATA "g 3",  3
660 DATA "c 3", 16, "d 3", 16
670 DATA "e 3",  8, "e 3",  8
680 DATA "e 3", 16, "a 3",  8, "g 3", 16
690 DATA "c 3",  8, "c 3",  8
700 DATA "c 3", 16, "g 3",  8, "f 3", 16
710 DATA "e 3",  4
720 DATA "f 3", 16, "e 3", 16, "d 3", 16, "c 3", 16
730 DATA "d 3",  2

740 DATA "e 3",  4
750 DATA "f 3", 16, "e 3", 16, "d#3", 16, "e 3", 16
760 DATA "f 3",  4
770 DATA "f#3", 16, "g 3",  6
780 DATA "a 3",  8, "b 3", 16, "c 4", 16
790 DATA "d 4", 16, "c 4", 16, "b 3", 16, "a 3", 16
800 DATA "g 3",  3
810 DATA "c 3", 16, "d 3", 16
820 DATA "e 3",  8, "e 3",  8
830 DATA "e 3", 16, "a 3",  8, "g 3", 16
840 DATA "c 4",  3
850 DATA "c 3", 16, "d 3", 16
860 DATA "e 3",  8, "e 3",  8
870 DATA "a 3", 12, "a 3", 32, "b 2", 16, "b 2", 16
880 DATA "c 3",  2

890 DATA "end",  0

