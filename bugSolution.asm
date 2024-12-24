section .data
array DWORD 10, 20, 30, 40, 50
arrayLength equ ($ - array) / 4
section .bss
result resd 1
section .text
global _start
_start:
mov ecx, 3 ; Index to access
mov esi, array
; Check for out of bounds
cmp ecx, arrayLength
jge out_of_bounds
mov eax, [esi+ecx*4] ; Access array element safely
jmp continue
out_of_bounds:
; Handle out-of-bounds error appropriately
; Example: Set result to -1 to indicate an error
mov dword [result], -1
continue:
; ...rest of program...