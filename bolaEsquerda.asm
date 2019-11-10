.text
#---------------------------------------------------------------------------------#
#				MOVER BOLA PRA ESQUERDA
#---------------------------------------------------------------------------------#
main:		addi $20, $0, 5
		lui $7, 0x1001
		addi $7, $7, 248
		
mover:		beq $20, $0, sair
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		addi $20, $20, -1
		addi $7, $7, -4
		addi $2, $0, 32
		addi $4, $0, 200
		syscall
		j mover

sair:		addi $2, $0, 10
      		syscall
		
		


#---------------------------------------------------------------------------------#
#entradas
#7 --> 16 - endereço
#9 --> 17 - cor
#10--> 18 - número de colunas
#11--> 19 - número de linhas
#12--> 20 - contador2

#variáveis internas
#21 - pula linha

quadrado:	sw $31, 0($29)
      		sw $16, -4($29)
      		sw $17, -8($29)
      		sw $18, -12($29)
      		sw $19, -16($29)
      		sw $20, -20($29)
      		addi $29, $29, -24
      		
      		add $16, $0, $7
            	add $17, $0, $9
            	add $18, $0, $10
            	add $19, $0, $11
      		
forQuadrado:	beq $19, $0, fimQuadrado
		addi $21, $0, 64
		sw $17, 0($16)
		addi $16, $16, 4
		addi $18, $18, -1
		beq $18, $0, proxLinha
		j forQuadrado

proxLinha:	addi $19, $19, -1
            	sub $21, $21, $10
            	add $18, $0, $10
pulandoLinha:	addi $21, $21, -1
		addi $16, $16, 4
		beq $21, 0, forQuadrado
		j pulandoLinha
		
fimQuadrado:	addi $29, $29, +24
		lw $20, +20($29)
		lw $19, +16($29)
		lw $18, +12($29)
		lw $17, +8($29)
		lw $16, +4($29)
		lw $31, 0($29)
		jr $31