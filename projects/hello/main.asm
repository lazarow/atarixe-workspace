		icl 'init'
start	lda #0
		sta 559
loop	lda $d40b
		sta $d40a ;bp
		sta $d01a ;wb:$d01a
		jmp loop
		run start
