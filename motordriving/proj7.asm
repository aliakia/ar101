;  Assembly code generated by mikroVirtualMachine - V. 5.0.0.3
;  Date/Time: 03/11/2022 9:14:58 pm
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0004	$	_main:
;proj7.pbas,3 :: 		main:
$0004	$	_main_main:
;proj7.pbas,4 :: 		trisb=0
$0004	$1303			BCF	STATUS, RP1
$0005	$1683			BSF	STATUS, RP0
$0006	$1303			BCF	STATUS, RP1
$0007	$1683			BSF	STATUS, RP0
$0008	$0186			CLRF	TRISB, 1
;proj7.pbas,5 :: 		portb=0
$0009	$1283			BCF	STATUS, RP0
$000A	$0186			CLRF	PORTB, 1
;proj7.pbas,6 :: 		trisa=1
$000B	$3001			MOVLW	1
$000C	$1683			BSF	STATUS, RP0
$000D	$0085			MOVWF	TRISA
;proj7.pbas,7 :: 		porta=1
$000E	$3001			MOVLW	1
$000F	$1283			BCF	STATUS, RP0
$0010	$0085			MOVWF	PORTA
;proj7.pbas,8 :: 		portb.0=0
$0011	$1006			BCF	PORTB, 0
$0012	$	proj7_L_2:
;proj7.pbas,9 :: 		if porta.0=1 then
$0012	$3001			MOVLW	1
$0013	$0505			ANDWF	PORTA, 0
$0014	$00C1			MOVWF	STACK_1
$0015	$0841			MOVF	STACK_1, 0
$0016	$3A01			XORLW	1
$0017	$1D03			BTFSS	STATUS, Z
$0018	$281A			GOTO	proj7_L_4
$0019	$	proj7_L_3:
;proj7.pbas,10 :: 		goto run
$0019	$281B			GOTO	_main_run
$001A	$	proj7_L_4:
;proj7.pbas,11 :: 		end if
$001A	$	proj7_L_5:
;proj7.pbas,12 :: 		goto main
$001A	$2804			GOTO	_main_main
;proj7.pbas,13 :: 		run:
$001B	$	_main_run:
;proj7.pbas,14 :: 		portb.0=0
$001B	$1006			BCF	PORTB, 0
$001C	$	proj7_L_7:
;proj7.pbas,15 :: 		if porta.0=0 then
$001C	$3001			MOVLW	1
$001D	$0505			ANDWF	PORTA, 0
$001E	$00C1			MOVWF	STACK_1
$001F	$0841			MOVF	STACK_1, 0
$0020	$3A00			XORLW	0
$0021	$1D03			BTFSS	STATUS, Z
$0022	$2824			GOTO	proj7_L_9
$0023	$	proj7_L_8:
;proj7.pbas,16 :: 		goto main
$0023	$2804			GOTO	_main_main
$0024	$	proj7_L_9:
;proj7.pbas,17 :: 		end if
$0024	$	proj7_L_10:
;proj7.pbas,18 :: 		goto run
$0024	$281B			GOTO	_main_run
$0025	$2825			GOTO	$
