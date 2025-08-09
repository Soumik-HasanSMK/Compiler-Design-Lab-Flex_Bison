section .data
    input_format db "%d", 0
    output_format db "%d", 10, 0  ; 10 = newline
    number dd 0

section .bss

section .text
    extern printf, scanf
    global main

main:
    ; scanf("%d", &number)
    push number
    push input_format
    call scanf
    add esp, 8

    ; printf("%d\n", number)
    push dword [number]
    push output_format
    call printf
    add esp, 8

    ; return
    ret
