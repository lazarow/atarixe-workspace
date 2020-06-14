		org $2000

start	mwa #dl $230
		jmp *

		.local dl
		.byte $70,$70,$70
		.byte $42,a(screenMemory)
		.byte $43,a(screenMemory)
		.byte $44,a(screenMemory)
		.byte $45,a(screenMemory)
		.byte $46,a(screenMemory)
		.byte $47,a(screenMemory)
		.byte $48,a(screenMemory)
		.byte $49,a(screenMemory)
		.byte $4A,a(screenMemory)
		.byte $4B,a(screenMemory)
		.byte $4C,a(screenMemory)
		.byte $4D,a(screenMemory)
		.byte $4E,a(screenMemory)
		.byte $4F,a(screenMemory)
//:23		.byte $02
		.byte $41,a(dl)
		.endl

		.local screenMemory
		.byte "Hello world"
		.endl

		run start