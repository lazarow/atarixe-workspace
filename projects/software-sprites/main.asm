		org $2000

main	mwa #dl $0230
		mva #$00 $02C8 // COLBAKS
		mva #$22 $02C4 // COLPF0S
		mva #$04 $02C5 // COLPF1S
		mva #$90 $02C6 // COLPF2S
		mva #$80 $026F
loop	jmp loop
		
		run main

sm
:40	.byte %01001111
:40	.byte %00001111

dl	
	.byte $70, $70, $70
	.byte %01001111, a(sm)
	.byte %01001111, a(sm)
	.byte %01001111, a(sm)
	.byte %01001111, a(sm)
	.byte %01001111, a(sm+40)
	.byte %01001111, a(sm+40)
	.byte %01001111, a(sm+40)
	.byte %01001111, a(sm+40)
	.byte $41, a(dl)

