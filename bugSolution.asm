; Corrected Assembly Code
section .data
    array dd 1, 2, 3, 4, 5 ; Sample array
    array_size equ ($ - array) / 4 ; Size of the array in elements

section .bss

section .text
    global _start

_start:
    mov ecx, 0 ; Index for the array
    mov ebx, array ; Address of the array

loop_start:
    cmp ecx, array_size ; Check if the index is within bounds
    jge loop_end ; Jump to the end if the index is out of bounds

    mov eax, [ebx + ecx*4] ; Access array element safely
    ; ... process eax ...

    inc ecx ; Increment index
    jmp loop_start ; Loop again

loop_end:
    ; ... rest of the code ...
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80