        .segdef dane $4000 8
        
        org $2000

        .segment dane
                dta 1,2,3,4,5,6,7,8
        .endseg

        .proc main
        jmp *
        .endp

        run main