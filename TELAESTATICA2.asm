.text
main:
addi $10,$0,0xFFEFC6 #salmao
addi $11,$0,0x0419FF #azul
addi $12,$0,0xFFFFFF #branco
addi $13,$0,0x000000 #preto
addi $14,$0,0xFF0009 #vermelho
addi $23,$0,0x00FF3E #marelo

lui $8,0x1001
lui $22,0xFFFF
lui $9,0x1001
lui $7,0x1001


addi $9,$9,31744
jal def_areia
addi $20,$0,0
addi $21,$0,0
lui $9,0x1001
addi $9,$9,29732
jal def_basefase1
lui $9,0x1001
addi $9,$9,29800
addi $20,$0,0
addi $21,$0,0
jal def_basefase1
lui $9,0x1001
addi $9,$9,29868
addi $20,$0,0
addi $21,$0,0
jal def_basefase1
lui $9,0x1001
addi $9,$9,30008
addi $20,$0,0
addi $21,$0,0
jal def_basefase1
lui $9,0x1001
addi $9,$9,30076
addi $20,$0,0
addi $21,$0,0
jal def_basefase1
lui $9,0x1001
addi $9,$9,30144
addi $20,$0,0
addi $21,$0,0
jal def_basefase1
lui $9,0x1001
addi $9,$9,29940
jal def_basedetiro
lui $9,0x1001
addi $9,$9,30448
jal def_detalhetiro
lui $9,0x1001
addi $9,$9,29436
jal def_detalhetiro
lui $9,0x1001
addi $9,$9,30472
jal def_detalhetiro
lui $9,0x1001
lui $7,0x1001
addi $9,$9,28920
addi $7,$7,29944
j def_mira
j fim






def_areia:
sw $31,0($29)
beq $20,1020,voltar
sw $10,0($9)
addi $9,$9,4
addi $20,$20,1
j def_areia

def_basefase1:
sw $31,0($29)
sw $11,0($9)
addi $9,$9,512
sw $11,0($9)
addi $9,$9,8
sw $11,0($9)
addi $9,$9,8
sw $11,0($9)
addi $9,$9,492
sw $11,0($9)
addi $9,$9,4
sw $11,0($9)
addi $9,$9,8
sw $11,0($9)
addi $9,$9,8
sw $11,0($9)
addi $9,$9,4
sw $11,0($9)
addi $9,$9,4
sw $11,0($9)
addi $9,$9,484
whilebase1:
beq $20,20,voltar
beq $21,10,quebrar
sw $11,0($9)
addi $9,$9,4
addi $20,$20,1
addi $21,$21,1
j whilebase1
quebrar:
addi $9,$9,472
addi $21,$0,0
j whilebase1

def_basedetiro:
sw $31,0($29)
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,492
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,484
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,476
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
addi $9,$9,4
sw $10,0($9)
j voltar 

def_detalhetiro:
sw $31,0($29)
sw $11,0($9)
addi $9,$9,512
sw $11,0($9)
addi $9,$9,512
sw $11,0($9)
addi $9,$9,508
sw $11,0($9)
jr $31

def_mira:
sw $12,0($9)
addi $10,$0,0
j def_meteoros


defobomb:
sw $23,0($7)
addi $7,$7,508
sw $23,0($7)
addi $7,$7,4
sw $23,0($7)
addi $7,$7,4
sw $23,0($7)
addi $7,$7,500
sw $23,0($7)
addi $7,$7,4
sw $23,0($7)
addi $7,$7,4
sw $23,0($7)
addi $7,$7,4
sw $23,0($7)
addi $7,$7,4
sw $23,0($7)
addi $7,$7,500
sw $23,0($7)
addi $7,$7,4
sw $23,0($7)
addi $7,$7,4
sw $23,0($7)
addi $7,$7,508
sw $23,0($7)
addi $4,$0,0
sw $4, 4($22)
addi $7,$7,-512
addi $7,$7,-512
addi $7,$7,-512
addi $7,$7,-512
j descer


moveleft:
addi $9,$9-8
addi $7,$7,-8
sw $12,0($9)
sw $13,8($9)
addi $4,$0,0
sw $4, 4($22)
j descer
moverigth:
addi $9,$9,8
addi $7,$7,8
sw $12,0($9)
sw $13,-8($9)
addi $4,$0,0
sw $4, 4($22)
j descer
movedown:
addi $9,$9,1024
addi $7,$7,1024
sw $12,0($9)
sw $13,-1024($9)
addi $4,$0,0
sw $4, 4($22)
j descer
moveup:
addi $9,$9,-1024
addi $7,$7,-1024
sw $12,0($9)
sw $13,1024($9)
addi $4,$0,0
sw $4, 4($22)
j descer




def_meteoros:
addi $5, $1, 264
addi $2, $0, 42
syscall
addi $16,$4,0
div $17,$16,4
mfhi $17
beq $17,$0,addrandom
addi $4,$17,0
addi $2,$0,1
syscall
j def_meteoros
addrandom:
add $8,$8,$16
descer:
beq $10,22000,desenhar
addi $10,$10,1
j descer
desenhar:
addi $19,$0,268529664
slt $18,$19,$8
beq $18,1,limpar
sw $14,0($8)
addi $8,$8,516
addi $10,$0,0
def_move:
lw $4, 4($22)
beq $4, 99, defobomb
beq $4, 97, moveleft
beq $4, 100, moverigth
beq $4, 115, movedown
beq $4, 119, moveup
j descer
limpar:
beq $18,58,zerarmete
sw $13,0($8)
addi $8,$8,-516
addi $18,$18,1
j limpar
zerarmete:
addi $10,$0,0
addi $18,$0,0
lui $8,0x1001
j def_meteoros

voltar:
lw $31,0($29)
jr $31

fim:
addi $2,$0,10
syscall

