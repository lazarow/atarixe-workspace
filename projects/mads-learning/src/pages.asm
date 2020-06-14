        org $2000

        .pages
:300            dta 1   
        .endpg

        .proc main
        jmp *
        .endp

        run main