		org $2000

main	mwa #dl $0230
		mva #$00 $02C8 // COLBAKS
		mva #$22 $02C4 // COLPF0S
		mva #$94 $02C5 // COLPF1S
		mva #$D4 $02C6 // COLPF2S
		mwa #dli_1 $0200
loop	mva #%11000000 $D40E
		jmp loop
		
		run main

		.proc dli_1
			pha
			lda #$0E
			stx $D40A
			sta $D01A
			mwa #dli_2 $0200
			;wb:$0200
			;wb:$0201
			;wb:$02C8
			pla
			rti
		.endp

		.proc dli_2
			pha
			lda #$00
			stx $D40A
			sta $D01A
			mwa #dli_1 $0200
			pla
			rti
		.endp

sm
:40	.byte %00011011
:40 .byte 0
:40	.byte %00011011
:40 .byte 0
:40	.byte %00011011
:40 .byte 0
:40	.byte %00011011
:40	.byte 0
:40	.byte %00011011
:40	.byte 0
:40	.byte %00011011
:40	.byte 0
:40	.byte %00011011
:40	.byte 0
:40	.byte %00011011
:40	.byte 0

dl	
	.byte $70, $70, %11110000
	.byte %01001101, a(sm)
:14	.byte %00001101
	.byte %10001101
	.byte $41, a(dl)

