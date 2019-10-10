.data
   .asciiz "Digite o valor do raio " #0x10010000
   .asciiz "O volume da esfera de raio " #0x10010018
   .asciiz " vale " #0x10010034

.text
main:  lui $4, 0x1001
       addi $2, $0, 4
       syscall
       addi $2, $0, 5
       syscall
       add $9, $0, $2
       add $4, $0, $2
       jal VolE
       add $8, $0, $2
       
       lui $4, 0x1001
       addi $4, $4, 0x18
       addi $2, $0, 4
       syscall
       
       add $4, $0, $9
       addi $2, $0, 1
       syscall
       
       lui $4, 0x1001
       addi $4, $4, 0x34
       addi $2, $0, 4
       syscall
       
       add $4, $0, $8
       addi $2, $0, 1
       syscall

       addi $2, $0, 10
       syscall
       
#==============================================
#funcao para o calculo do volume de uma esfera.
#----------------------------------------------
# Entradas:
#      $4 = raio da esfera (R)
#----------------------------------------------
# Saidas:
#      $2 = volume da esfera
#----------------------------------------------
# Obs.:
#    Uso dos registradores $16 
# V = 4/3 * pi * R^3 aprox: 4 * R^3       
#==============================================
VolE:   sw $31, 0($29)
        sw $16, -4($29)
        addi $29, $29, -8
        
        mul $16, $2, $2
        mul $16, $16, $2
        sll $2, $16, 2 
          
        addi $29, $29, +8
        lw $16, +4($29)
        lw $31, 0($29)
        jr $31     










