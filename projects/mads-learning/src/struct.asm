        org $2000

.struct point
        x .byte
        y .byte
.ends

points dta point [10] (1,2) (3,4) (5,6)

        .proc main
        lda points[1].y
        jmp *
        .endp

        run main