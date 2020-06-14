        org $2000

.array data [10] .byte = 9
.enda

        .proc main
        jmp *
        .endp

        run main