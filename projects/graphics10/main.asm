		org $2000 

		.proc main

		DLPTRS=$0230 // rejestr cień dla wskaźnika rozkazów DL
		mwa #displayList DLPTRS
		GTIACTLS=$026F // rejestr cień dla bitów GTIACTL
		mva #%10000000 GTIACTLS

		// kolory
		mva #%00011000 $02C0
		mva #%00101000 $02C1
		mva #%00111000 $02C2
		mva #%01001000 $02C3
		mva #%01011000 $02C4
		mva #%01101000 $02C5
		mva #%01111000 $02C6
		mva #%10001000 $02C7
		mva #%10010000 $02C8

		jmp *
		.endp

		run main

		.local screenData1
			.byte "ATARI"
		.endl

		.local screenData2
:40			.byte 4
		.endl

		.local displayList
			.byte %01000010, a(screenData1)
			.byte %01001111, a(screenData2)
			.byte $41, a(displayList)
		.endl
