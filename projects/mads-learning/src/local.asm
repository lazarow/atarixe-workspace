        org $2000

test    .local,$8000
                dta 1, 2, 3, 4, 5
        .endl

        .proc main
        lda test
        jmp *
        .endp

        run main