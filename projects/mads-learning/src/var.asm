        org $2000

.var a .byte = $3000

        .proc main
        mva #2 a
        .print "Test1: ",a
        .echo "Test2: ",a
        jmp *
        .endp

        run main