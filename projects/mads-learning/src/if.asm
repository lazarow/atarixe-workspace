        org $2000

        .IF 2 < 1
                dta $01
        .ELSE
                dta $02
        .ENDIF

        .proc main
        jmp *
        .endp

        run main