        org $2000

buffer  .ds 256

.by 1 2 3 4 5
.by +$10 1 2 3 4 5

.wo 1 2 3 4 5
.wo +$10 1 2 3 4 5

        .proc main
        .echo .adr buffer
        jmp *
        .endp

        run main