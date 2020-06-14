        org $2000

.macro test val
        #if .byte :val < 48
                lda #:val
        #else
                lda #0
        #end
.endm

        .proc main
        test 32
        test 64
        jmp *
        .endp

        run main