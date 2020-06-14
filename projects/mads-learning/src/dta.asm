        org $2000

        dta 1, 2, 4
        dta a($F00F)

        dta b(rnd(0,8,10))

        .proc main
        jmp *
        .endp

        run main