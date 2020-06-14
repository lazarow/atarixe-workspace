        org $2000

.var a .byte = $3000

        .proc main
        mva #2 a
        #if .byte a < #1
                lda #$99
        #end
        jmp *
        .endp

        run main