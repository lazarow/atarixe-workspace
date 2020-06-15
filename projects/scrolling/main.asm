		org $2000

		.var .byte c = 0

		.proc main
			mwa #displayList $0230
loop		mva c $D404
			lda 20
frame		cmp 20
            beq frame
			dec c
			jmp loop
		.endp

		.local screenMemory
:11			.byte $01, $02, $03, $04
		.endl

		.local displayList
			.byte $70, $70, $70
			.byte %01010010, a(screenMemory)
			.byte %01010010, a(screenMemory)
			.byte $41, a(displayList)
		.endl

		run main
