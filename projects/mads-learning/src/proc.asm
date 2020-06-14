        org $2000

        .proc test
                rts
        .endp

        .proc main
        test
        jmp *
        .endp

        run main