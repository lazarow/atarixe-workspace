        org $2000

.enum type
       a = 4
       b = 5
.ende

        .proc main
        lda #type.b
        jmp *
        .endp

        run main