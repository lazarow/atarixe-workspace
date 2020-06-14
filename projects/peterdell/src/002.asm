		org $2000

screen = $58	// 88, SAVMCS

		.proc main
		ldy #0

loop	tya
		sta (screen), y
		iny
		bne loop

stop	jmp stop
		.endp

		run main
