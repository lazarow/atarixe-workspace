        org $2000

        dta 255

        .ALIGN 4096,1 // wyrówanienie do 4kB

        .proc main
        jmp *
        .endp

        run main