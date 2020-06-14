        org $2000

        .rept 10
                dta b(#)
                dta(.R)
        .endr

        .rept 10, #*2
                dta :1
        .endr

        .proc main
        jmp *
        .endp

        run main