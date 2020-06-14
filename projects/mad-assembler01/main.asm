; komentarz
// komentarz
/*
komentarz
*/

/*
Sposoby zapisu liczb:
1743 (decymalny)
$100 (hexadecymalny)
$e430
$000001
0x12
0xa000
0xaabbccdd
%0001001010 (zapis binarny)
%000000001
%001000
'a' (ATASCII, apostrofy)
'fds'
'W'* // odwrócenie znaku
"B" (INTERNAL, cudzysłowia)
 "FDSFSD"
 "."* // odwrócenie znaku
*/

		org $2000
start	lda #0
		sta 559
loop	lda $d40b
		sta $d40a \ sta $d01a // łączenie lub dzielenie wierszy

		lda #0xFE \ sta 0x3000 ;wb:$3000
		lda #%00000010 \ sta 0x3001 ;wb:$3001
etykieta1	lda #'a' \ sta 0x3002 ;wb:$3002
// etykieta tymczasowa, tzn. może zmieniać swój adres w czasie składania
etykieta2?		lda #'A' \ sta 0x3003 ;wb:$3003
// etykieta z białymi znakami przed
	etykieta3:		lda #"a" \ sta 0x3004 ;wb:$3004
		lda #"A" \ sta 0x3005 ;wb:$3005
		// wyrażenia!
		lda #"A" + 16 \ sta 0x3006 ;wb:$3006

// etykiety anonimowe
//@		lda #2 ;bp
//		jmp @+1
//		lda #1
//@		nop
//		jmp @-1
//@		nop
//nazwa2=12 // można ręcznie przypisać adres do etykiety
//		jmp nazwa2 ;bp

// etykiety dzielimy na lokalne (w .MACRO, procedury .PROC czy obszaru lokalnego .LOCAL) i globalne (główny blok programu)
// .DEF :label [= expression] <- pominięcie lokalności

// REQ, RNE, RPL, RMI, RCC, RCS, RVC, RVS <- automatyczne skoki do poprzedniej instrukcji (bez etykiety)
// SEQ, SNE, SPL, SMI, SCC, SCS, SVC, SVS <- automatyczne skoki do następnej instrukcji (bez etykiety)

		jmp \ // łączenie lub dzielenie wierszy
		loop
		lda:cmp:req 20 // lda 20 \ cmp 20 \ req 20 <- łączenie mnemoników, czyli mnemonik:mnemonik {argumenty}
		run start
