extern printf
section .data
dos dq 2.0
cuatro dq 4.0
A dq 0.0
B dq 0.0
C dq 0.0
formamas db "La raiz de la B + formula es: %f",10,0
formamenos db "La raiz de la B - formula es: %f",10,0

section .bss
BNegativo resq 1
Bcuadrado resq 1
CuatroxAxC resq 1
Discriminante resq 1
RaizDeDiscriminante resq 1
dosxA resq 1
ResulMas resq 1
ResulMenos resq 1





section .text
global Resolventeasm


Resolventeasm:
    push ebp
    mov ebp, esp;for correct debugging
    finit 
    fld dword [ebp+8]
    fst qword [A]
    finit 
    fld dword [ebp+12]
    fst qword [B]
    finit 
    fld dword [ebp+16]
    fst qword [C]
    
    
    
    
    
     finit 
    ;-B
    fld qword [B]
    fchs
    fst qword [BNegativo]
    
    
    finit 
    ;BCuadrado
    fld qword [B]
    fmul st0,st0
    fst qword [Bcuadrado]
    
    finit 
    ;4xA
    fld qword [cuatro]
    fld qword [A]
    fmul
    ;xC
    fld qword [C]
    fmul 
    fst qword [CuatroxAxC]
    
    finit 
    ;Discriminante 
    fld qword [Bcuadrado]
    fld qword [CuatroxAxC]
    fsub 
    fst qword [Discriminante]
    
    
    finit 
    ;raiz
    fld qword [Discriminante]
    fsqrt
    fst qword [RaizDeDiscriminante] 
    
    finit 
    ;2xA
    fld qword [dos]
    fld qword [A]
    fmul
    fst qword [dosxA]
    
    finit 
    ;Resul1 
    fld qword [BNegativo]
    fld qword [RaizDeDiscriminante]
    fadd
    fld qword [dosxA]
    fdiv
    fst qword [ResulMas]
    
    finit 
    ;Resul1 
    fld qword [BNegativo]
    fld qword [RaizDeDiscriminante]
    fsub
    fld qword [dosxA]
    fdiv
    fst qword [ResulMenos]
    
    
    
    push dword [ResulMenos+4]
    push dword [ResulMenos]
    push formamenos
    call printf
    add ESP ,12
    
    
    push dword [ResulMas+4]
    push dword [ResulMas]
    push formamas
    call printf
    add ESP ,12
    
    
    mov ebp,esp
    pop ebp
    ret
    
 
    
    
 
    
    
    
    
    
    
