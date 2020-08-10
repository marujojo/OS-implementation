%include "boot.inc"

SECTION loader vstart=LOADER_BASE_ADDR

    mov byte [gs:0x4],'L'
    mov byte [gs:0x5],0xA4

    mov byte [gs:0x6],'O'
    mov byte [gs:0x7],0xA4
    
    mov byte [gs:0x8],'A'
    mov byte [gs:0x9],0xA4
   
    mov byte [gs:0xa],'D'
    mov byte [gs:0xb],0xA4
   
    mov byte [gs:0xc],'E'
    mov byte [gs:0xd],0xA4
   
    mov byte [gs:0xe],'R'
    mov byte [gs:0xf],0xA4

    jmp $
