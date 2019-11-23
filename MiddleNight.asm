.text
#---------------------------------------------------------------------------------#
#				CONTORNO DA TELA
#---------------------------------------------------------------------------------#
main: 		lui $7, 0x1001
      		
      		jal tubo
      		
      		lui $9, 0x00ff #0x00ff0000
      		addi $9, $9, 0x000000ff #0x00ff00ff
      		
      		addi $11, $0, 128
      		jal line
      		
      		addi $7, $7, 32256
      		addi $11, $0, 27
      		jal line
      		
      		lui $7, 0x1001
      		addi $7, $7, 32400
		addi $11, $0, 30
      		jal line
      
      		lui $7, 0x1001
      		addi $7, $7, 512
      		addi $11, $0, 22
      		jal line
      		
      		lui $7, 0x1001
      		addi $7, $7, 604
      		addi $11, $0, 3
      		lui $9, 0x00ff #0x00ff0000
      		jal line

		lui $7, 0x1001
      		addi $7, $7, 624
      		addi $11, $0, 3
      		addi $9, $0, 0x00ffff00 #0x00ff0000
      		jal line
      		
      		lui $7, 0x1001
      		addi $7, $7, 644
      		addi $11, $0, 3
      		addi $9, $0, 0x000020ff #0x00ff0000
      		jal line
      		
      		lui $7, 0x1001
      		addi $7, $7, 664
      		addi $11, $0, 3
      		addi $9, $0, 0x0000ff00 #0x00ff0000
      		jal line
      		
      		lui $7, 0x1001
      		addi $7, $7, 680
      		addi $11, $0, 23
      		addi $9, $0, 0x00ff00ff #0x00ff0000
      		jal line
      				
      		lui $7, 0x1001
      		addi $7, $7, 32512
      		addi $11, $0, 27
      		jal line
      		
      		lui $7, 0x1001
      		addi $7, $7, 32656
		addi $11, $0, 33
      		jal line
      		
      		lui $7, 0x1001
      		addi $7, $7, 768
      		addi $11, $0, 7872
      		jal collumns
      		
      		
#---------------------------------------------------------------------------------#
#				MEIO DA TELA
#---------------------------------------------------------------------------------#
#7 --> 16 - endereço
#9 --> 17 - cor
#10--> 18 - número de colunas
#11--> 19 - número de linhas
#12--> 20 - contador2
                                    
		lui $7, 0x1001
      		addi $7, $7, 2080
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 10
		addi $11, $0, 10
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 2340
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 2216
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 10
		addi $11, $0, 10
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 2476
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 7776
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 10
		addi $11, $0, 10
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 8036
      		addi $9, $0, 0x000000ff #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 19824
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 6
		addi $11, $0, 6
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 20084
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 4
		addi $11, $0, 4
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 23100
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 6
		addi $11, $0, 6
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 23360
      		addi $9, $0, 0x000000ff #0x00ff0000                    
		addi $10, $0, 4
		addi $11, $0, 4
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 23204
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 6
		addi $11, $0, 6
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 23464
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 4
		addi $11, $0, 4
		jal quadrado
		
		
#entradas
#7 --> 16 - endereço
#9 --> 17 - cor
#10--> 18 - número de colunas
#11--> 19 - número de linhas

#variáveis internas
#20 - pula linha
#21 - contador
#22 - comparador

		lui $7, 0x1001
      		addi $7, $7, 14816
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal abaD
		
		lui $7, 0x1001
      		addi $7, $7, 14604
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal abaE
		
		lui $7, 0x1001
      		addi $7, $7, 17764
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 17804
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 17772
      		addi $9, $0, 0x000000ff #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 2
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 25364
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 1
		addi $11, $0, 23
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 25560
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 1
		addi $11, $0, 23
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 25548
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 1
		addi $11, $0, 20
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 25376
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 1
		addi $11, $0, 20
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 30496
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 13
		addi $11, $0, 3
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 30632
      		addi $9, $0, 0x00ff00ff #0x00ff0000                    
		addi $10, $0, 10
		addi $11, $0, 3
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 30548
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 5
		addi $11, $0, 3
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 30612
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 5
		addi $11, $0, 3
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 30608
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaD
		
		lui $7, 0x1001
      		addi $7, $7, 30568
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaE
		
		lui $7, 0x1001
      		addi $7, $7, 31980
      		lui $6, 0x1001
      		addi $6, $6, 748
      		lui $5, 0x1001
		addi $5, $5, 32236
		lui $3, 0x1001
		addi $3, $3, 1260
		
subirBola:	
      		addi $9, $0, 0x00ffffff #0x00ff0000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		addi $2, $0, 32
		addi $4, $0, 20
		syscall
		beq $5, $3, naoLimpar
		addi $9, $0, 0x00000000 #0x00ff0000
		addi $10, $0, 2
		jal limparBaixo

		addi $5, $5, -256
naoLimpar:	addi $7, $7, -256
		beq $7, $6, prepara
		j subirBola
prepara:		
		lui $5, 0x1001
		addi $5, $5, 1004
		
		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, 508
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 20
		syscall
		
		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, 1016
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 20
		syscall
		
nextStep:#Aqui	
moverDiagonal1:

		lw $15, -256($5)
		beq $15, 0x00ff00ff, moverParaBaixo
		beq $15, 0x000000ff, moverParaBaixo
		beq $15, 0x00ff0000, moverParaBaixo
		beq $15, 0x0000ff00, moverParaBaixo
		
		lw $15, -252($5)
		beq $15, 0x00ff00ff, moverParaBaixo
		beq $15, 0x000000ff, moverParaBaixo
		beq $15, 0x00ff0000, moverParaBaixo
		beq $15, 0x0000ff00, moverParaBaixo
		
		lw $15, 252($5)
		beq $15, 0x00ff00ff, moverDiagonal2
		beq $15, 0x000000ff, moverDiagonal2
		beq $15, 0x00ff0000, moverDiagonal2
		beq $15, 0x0000ff00, moverDiagonal2
		
		lw $15, -4($5)
		beq $15, 0x00ff00ff, moverParaDireita
		beq $15, 0x000000ff, moverParaDireita
		beq $15, 0x00ff0000, moverParaDireita
		beq $15, 0x0000ff00, moverParaDireita
		
		lw $15, 508($5)
		beq $15, 0x00ff00ff, moverDiagonal2
		beq $15, 0x000000ff, moverDiagonal2
		beq $15, 0x00ff0000, moverDiagonal2
		beq $15, 0x0000ff00, moverDiagonal2
		
		lw $15, -260($5)
		beq $15, 0x00ff00ff, moverDiagonal4
		beq $15, 0x000000ff, moverDiagonal4
		beq $15, 0x00ff0000, moverDiagonal4
		beq $15, 0x0000ff00, moverDiagonal4
		
		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, -260
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 300
		syscall
		
		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, -260
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 300
		syscall
		
		j moverDiagonal1
		
moverDiagonal4:
		lw $15, 512($5)
		beq $15, 0x00ff00ff, moverParaCima
		beq $15, 0x000000ff, moverParaCima
		beq $15, 0x00ff0000, moverParaCima
		beq $15, 0x0000ff00, moverParaCima
		lw $15, 516($5)
		beq $15, 0x00ff00ff, moverParaCima
		beq $15, 0x000000ff, moverParaCima
		beq $15, 0x00ff0000, moverParaCima
		beq $15, 0x0000ff00, moverParaCima

		lw $15, 520($5)
		beq $15, 0x00ff00ff, moverDiagonal1
		beq $15, 0x000000ff, moverDiagonal1
		beq $15, 0x00ff0000, moverDiagonal1
		beq $15, 0x0000ff00, moverDiagonal1

		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, 520
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 300
		syscall
		
		j moverDiagonal4
		
moverParaBaixo:
		
		lw $15, 508($5)
		beq $15, 0x00ff00ff, moverDiagonal2
		beq $15, 0x000000ff, moverDiagonal2
		beq $15, 0x00ff0000, moverDiagonal2
		beq $15, 0x0000ff00, moverDiagonal2

		lw $15, 520($5)
		beq $15, 0x00ff00ff, moverDiagonal1
		beq $15, 0x000000ff, moverDiagonal1
		beq $15, 0x00ff0000, moverDiagonal1
		beq $15, 0x0000ff00, moverDiagonal1
		
		lw $15, 512($5)
		beq $15, 0x00ff00ff, moverParaCima
		beq $15, 0x000000ff, moverParaCima
		beq $15, 0x00ff0000, moverParaCima
		beq $15, 0x0000ff00, moverParaCima
		
		lw $15, 516($5)
		beq $15, 0x00ff00ff, moverParaCima
		beq $15, 0x000000ff, moverParaCima
		beq $15, 0x00ff0000, moverParaCima
		beq $15, 0x0000ff00, moverParaCima

		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, 256
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 300
		syscall
		
		j moverParaBaixo
		
		
moverDiagonal3:
		lw $15, 512($5)
		beq $15, 0x00ff00ff, moverParaCima
		beq $15, 0x000000ff, moverParaCima
		beq $15, 0x00ff0000, moverParaCima
		beq $15, 0x0000ff00, moverParaCima
		lw $15, 516($5)
		beq $15, 0x00ff00ff, moverParaCima
		beq $15, 0x000000ff, moverParaCima
		beq $15, 0x00ff0000, moverParaCima
		beq $15, 0x0000ff00, moverParaCima

		lw $15, 508($5)
		beq $15, 0x00ff00ff, moverDiagonal2
		beq $15, 0x000000ff, moverDiagonal2
		beq $15, 0x00ff0000, moverDiagonal2
		beq $15, 0x0000ff00, moverDiagonal2

		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, 508
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 300
		syscall
		
		j moverDiagonal3
		
moverParaCima:

		lw $15, -260($5)
		beq $15, 0x00ff00ff, moverDiagonal4
		beq $15, 0x000000ff, moverDiagonal4
		beq $15, 0x00ff0000, moverDiagonal4
		beq $15, 0x0000ff00, moverDiagonal4
		
		lw $15, -248($5)
		beq $15, 0x00ff00ff, moverDiagonal3
		beq $15, 0x000000ff, moverDiagonal3
		beq $15, 0x00ff0000, moverDiagonal3
		beq $15, 0x0000ff00, moverDiagonal3

		lw $15, -256($5)
		beq $15, 0x00ff00ff, moverParaBaixo
		beq $15, 0x000000ff, moverParaBaixo
		beq $15, 0x00ff0000, moverParaBaixo
		beq $15, 0x0000ff00, moverParaBaixo
		
		lw $15, -252($5)
		beq $15, 0x00ff00ff, moverParaBaixo
		beq $15, 0x000000ff, moverParaBaixo
		beq $15, 0x00ff0000, moverParaBaixo
		beq $15, 0x0000ff00, moverParaBaixo

		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, -256
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 300
		syscall
		
		j moverParaCima
		
moverDiagonal2:
		lw $15, -256($5)
		beq $15, 0x00ff00ff, moverParaBaixo
		beq $15, 0x000000ff, moverParaBaixo
		beq $15, 0x00ff0000, moverParaBaixo
		beq $15, 0x0000ff00, moverParaBaixo
		
		lw $15, -252($5)
		beq $15, 0x00ff00ff, moverParaBaixo
		beq $15, 0x000000ff, moverParaBaixo
		beq $15, 0x00ff0000, moverParaBaixo
		beq $15, 0x0000ff00, moverParaBaixo
		
		lw $15, 8($5)
		beq $15, 0x00ff00ff, moverParaDireita
		beq $15, 0x000000ff, moverParaDireita
		beq $15, 0x00ff0000, moverParaDireita
		beq $15, 0x0000ff00, moverParaDireita
		
		lw $15, 264($5)
		beq $15, 0x00ff00ff, moverParaDireita
		beq $15, 0x000000ff, moverParaDireita
		beq $15, 0x00ff0000, moverParaDireita
		beq $15, 0x0000ff00, moverParaDireita
		
		lw $15, -248($5)
		beq $15, 0x00ff00ff, moverDiagonal3
		beq $15, 0x000000ff, moverDiagonal3
		beq $15, 0x00ff0000, moverDiagonal3
		beq $15, 0x0000ff00, moverDiagonal3

		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, -248
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 300
		syscall
		
		j moverDiagonal2
		
moverParaDireita:
		lw $15, 520($5)
		beq $15, 0x00ff00ff, moverDiagonal1
		beq $15, 0x000000ff, moverDiagonal1
		beq $15, 0x00ff0000, moverDiagonal1
		beq $15, 0x0000ff00, moverDiagonal1

		lw $15, 8($5)
		beq $15, 0x00ff00ff, moverParaEsquerda
		beq $15, 0x000000ff, moverParaEsquerda
		beq $15, 0x00ff0000, moverParaEsquerda
		beq $15, 0x0000ff00, moverParaEsquerda
		lw $15, 264($5)
		beq $15, 0x00ff00ff, moverParaEsquerda
		beq $15, 0x000000ff, moverParaEsquerda
		beq $15, 0x00ff0000, moverParaEsquerda
		beq $15, 0x0000ff00, moverParaEsquerda
		
		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, 8
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 300
		syscall
		
		j moverParaDireita
		
moverParaEsquerda:
		lw $15, -4($5)
		beq $15, 0x00ff00ff, moverParaDireita
		beq $15, 0x000000ff, moverParaDireita
		beq $15, 0x00ff0000, moverParaDireita
		beq $15, 0x0000ff00, moverParaDireita
		lw $15, 252($5)
		beq $15, 0x00ff00ff, moverParaDireita
		beq $15, 0x000000ff, moverParaDireita
		beq $15, 0x00ff0000, moverParaDireita
		beq $15, 0x0000ff00, moverParaDireita

		add $7, $0, $5
		addi $9, $0, 0x00000000
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $5, $5, -4
		
		add $7, $0, $5
		addi $9, $0, 0x00ffffff
		addi $10, $0, 2
		addi $11, $0, 2
		jal quadrado
		
		addi $2, $0, 32
		addi $4, $0, 300
		syscall
		
		j moverParaEsquerda

segueACaminhada:

		#lw $15, -260($5)
		#beq $15, 0x00ff00ff, moverDiagonal4
		#lw $15, -248($5)
		#beq $15, 0x00ff00ff, moverDiagonal3
		#lw $15, 508($5)
		#beq $15, 0x00ff00ff, moverDiagonal2
		#lw $15, 520($5)
		#beq $15, 0x00ff00ff, moverDiagonal1
		#lw $15, -4($5)
		#beq $15, 0x00ff00ff, moverParaDireita
		#lw $15, 252($5)
		#beq $15, 0x00ff00ff, moverParaDireita
		#lw $15, -256($5)
		#beq $15, 0x00ff00ff, moverParaBaixo
		#lw $15, -252($5)
		#beq $15, 0x00ff00ff, moverParaBaixo
		#lw $15, 8($5)
		#beq $15, 0x00ff00ff, moverParaEsquerda
		#lw $15, 264($5)
		#beq $15, 0x00ff00ff, moverParaEsquerda
		#lw $15, 512($5)
		#beq $15, 0x00ff00ff, moverParaCima
		#lw $15, 516($5)
		#beq $15, 0x00ff00ff, moverParaCima
		
		#lw $15, -260($5)
		#beq $15, 0x00ff00ff, bateuDiagonal1
		#lw $15, -248($5)
		#beq $15, 0x00ff00ff, bateuDiagonal2
		#lw $15, 508($5)
		#beq $15, 0x00ff00ff, bateuDiagonal3
		#lw $15, 520($5)
		#beq $15, 0x00ff00ff, bateuDiagonal4
		#lw $15, -4($5)
		#beq $15, 0x00ff00ff, bateuFrente
		#lw $15, 252($5)
		#beq $15, 0x00ff00ff, bateuFrente
		#lw $15, -256($5)
		#beq $15, 0x00ff00ff, bateuCima
		#lw $15, -252($5)
		#beq $15, 0x00ff00ff, bateuCima
		#lw $15, 8($5)
		#beq $15, 0x00ff00ff, bateuAtras
		#lw $15, 264($5)
		#beq $15, 0x00ff00ff, bateuAtras
		#lw $15, 512($5)
		#beq $15, 0x00ff00ff, bateuBaixo
		#lw $15, 516($5)
		#beq $15, 0x00ff00ff, bateuBaixo
	
		li $4, 0
		lui $7, 0xffff
		lw $4, 4($7)
		beq $4, 97, tortaoEsquerdo
		beq $4, 100, tortaoDireito
		
		j nextStep
		
tortaoEsquerdo: 
		lui $7, 0x1001
      		addi $7, $7, 30548
      		addi $9, $0, 0x00000000 #0x00ff0000                    
		addi $10, $0, 5
		addi $11, $0, 3
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 30568
      		addi $9, $0, 0x00000000 #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaE
		
		lui $7, 0x1001
      		addi $7, $7, 29256
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 5
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 28488
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaE
		#----------------#
		lui $7, 0x1001
      		addi $7, $7, 30612
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 5
		addi $11, $0, 3
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 30608
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaD
		
		lui $7, 0x1001
      		addi $7, $7, 29352
      		addi $9, $0, 0x00000000 #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 5
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 28592
      		addi $9, $0, 0x00000000 #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaD
#--------------------------------------------------------------------------------------------------------------#
		
		lui $7, 0x1001
      		addi $7, $7, 2340
      		addi $9, $0, 0x000000ff #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 2476
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 8036
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 14816
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal abaD
		
		lui $7, 0x1001
      		addi $7, $7, 14604
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal abaE
		
		lui $7, 0x1001
      		addi $7, $7, 17772
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 2
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 20084
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 4
		addi $11, $0, 4
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 23360
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 4
		addi $11, $0, 4
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 23464
      		addi $9, $0, 0x000000ff #0x00ff0000                    
		addi $10, $0, 4
		addi $11, $0, 4
		jal quadrado
		
		add $4, $0, $0
		add $7, $0, $0
		
		j nextStep
		
tortaoDireito:
		lui $7, 0x1001
      		addi $7, $7, 30612
      		addi $9, $0, 0x00000000 #0x00ff0000                    
		addi $10, $0, 5
		addi $11, $0, 3
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 30608
      		addi $9, $0, 0x00000000 #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaD
		
		lui $7, 0x1001
      		addi $7, $7, 29352
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 5
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 28592
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaD
		
		#-----------------#
		
		lui $7, 0x1001
      		addi $7, $7, 30548
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 5
		addi $11, $0, 3
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 30568
      		addi $9, $0, 0x00ffffff #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaE
		
		lui $7, 0x1001
      		addi $7, $7, 29256
      		addi $9, $0, 0x00000000 #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 5
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 28488
      		addi $9, $0, 0x00000000 #0x00ff0000                    
		addi $10, $0, 3
		addi $11, $0, 3
		jal abaE
#-------------------------------------------------------------------------------------#
		
		lui $7, 0x1001
      		addi $7, $7, 2340
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 2476
      		addi $9, $0, 0x000000ff #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 8036
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 14816
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal abaD
		
		lui $7, 0x1001
      		addi $7, $7, 14604
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 8
		jal abaE
		
		lui $7, 0x1001
      		addi $7, $7, 17772
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 8
		addi $11, $0, 2
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 20084
      		addi $9, $0, 0x00ff0000 #0x00ff0000                    
		addi $10, $0, 4
		addi $11, $0, 4
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 23360
      		addi $9, $0, 0x000000ff #0x00ff0000                    
		addi $10, $0, 4
		addi $11, $0, 4
		jal quadrado
		
		lui $7, 0x1001
      		addi $7, $7, 23464
      		addi $9, $0, 0x0000ff00 #0x00ff0000                    
		addi $10, $0, 4
		addi $11, $0, 4
		jal quadrado
		
		add $4, $0, $0
		add $7, $0, $0

		j nextStep
deuCerto:		
      		addi $2, $0, 10
      		syscall
      
      

      
#--------------------------------------------------------------------------------#
#					FUNCTIONS
#--------------------------------------------------------------------------------#
#entradas
#5 --> 16 - endereço
#9 --> 17 - cor
#10--> 18 - número de colunas
limparBaixo:	sw $31, 0($29)
      		sw $16, -4($29)
      		sw $17, -8($29)
      		sw $18, -12($29)
      		sw $19, -16($29)
      		addi $29, $29, -20
      		
      		add $16, $0, $5
            	add $17, $0, $9
            	add $18, $0, $10
            	
forLimpar:  	beq $19, $18, exitLimpar
      		sw $17, 0($16)
      		add $16, $16, 4
      		addi $19, $19, 1
      		j forLimpar
      		
exitLimpar:     addi $29, $29, +20
		lw $19, +16($29)
		lw $18, +12($29)
		lw $17, +8($29)
		lw $16, +4($29)
		lw $31, 0($29)
		jr $31

#--------------------------------------------------------------------------------#
#entradas
#7 --> 16 - endereço
#9 --> 17 - cor
#10--> 18 - número de colunas
#11--> 19 - número de linhas

#variáveis internas
#20 - pula linha
#21 - contador
#22 - comparador


abaD:		sw $31, 0($29)
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
      		addi $22, $0, 2
      		
      		
forAbaD:	beq $19, $0, fimabaD
		addi $20, $0, 64
		addi $21, $21, 1
		beq $21, $22, proxLinhaAbaD
		sw $17, 0($16)
		addi $16, $16, 4
		j forAbaD

proxLinhaAbaD:	addi $19, $19, -1
            	sub $20, $20, $21
		addi $21, $0, 0
		addi $22, $22, 1
pulandoLinhaAbaD:addi $20, $20, -1
		addi $16, $16, 4
		beq $20, 0, forAbaD
		j pulandoLinhaAbaD
      		
      		
fimabaD: 	addi $29, $29, +24
		lw $20, +20($29)
		lw $19, +16($29)
		lw $18, +12($29)
		lw $17, +8($29)
		lw $16, +4($29)
		lw $31, 0($29)
		jr $31
#--------------------------------------------------------------------------------#
#entradas
#7 --> 16 - endereço
#9 --> 17 - cor
#10--> 18 - número de colunas
#11--> 19 - número de linhas

#variáveis internas
#20 - pula linha
#21 - contador
#22 - comparador		
abaE:		sw $31, 0($29)
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
      		addi $22, $0, 1
      		
forAbaE:	beq $19, $0, fimabaE
		beq $21, $22, proxLinhaAbaE
		addi $21, $21, 1
      		addi $20, $0, 64
		sw $17, 0($16)
		addi $16, $16, 4
		j forAbaE

proxLinhaAbaE:	addi $19, $19, -1
		sub $20, $20, $21
		addi $21, $0, 0
		addi $22, $22, 1
pulandoLinhaAbaE:
		addi $20, $20, -1
		addi $16, $16, 4
		beq $20, 0, forAbaE
		j pulandoLinhaAbaE
      		
      		
fimabaE: 	addi $29, $29, +24
		lw $20, +20($29)
		lw $19, +16($29)
		lw $18, +12($29)
		lw $17, +8($29)
		lw $16, +4($29)
		lw $31, 0($29)
		jr $31

#--------------------------------------------------------------------------------#

#7 --> 16 - endereço
#9 --> 17 - cor
#11--> 18 - número de pixels
#19 - contador 
      	
line:  		sw $31, 0($29)
      		sw $16, -4($29)
      		sw $17, -8($29)
      		sw $18, -12($29)
      		sw $19, -16($29)
      		addi $29, $29, -20
    
            	add $16, $0, $7
            	add $17, $0, $9
            	add $18, $0, $11
            	add $19, $0, $0
            
for:  		beq $19, $18, exit
      		sw $17, 0($16)
      		add $16, $16, 4
      		addi $19, $19, 1
      		j for
      
exit:      	addi $29, $29, +20
		lw $19, +16($29)
		lw $18, +12($29)
		lw $17, +8($29)
		lw $16, +4($29)
		lw $31, 0($29)
		jr $31
#--------------------------------------------------------------------------------#
#7 --> 16 - endereço
#9 --> 17 - cor
#11--> 18 - número de pixels
#19 - contador
#20 - contador2
#21 - meio (58)
      
collumns:  	sw $31, 0($29)
      		sw $16, -4($29)
      		sw $17, -8($29)
      		sw $18, -12($29)
      		sw $19, -16($29)
      		sw $20, -20($29)
      		sw $21, -24($29)
      		addi $29, $29, -28
    
            	add $16, $0, $7
            	add $17, $0, $9
            	add $18, $0, $11
            	add $19, $0, $0
            	addi $20, $0, 3
            	addi $21, $0, 58
            
for2:  		beq $19, $18, exit2
		beq $20, 1, print
		beq $20, 2, print
		beq $20, 3, print
		beq $20, 4, print
		beq $20, 5, print
		beq $20, 6, print
		addi $21, $21, -1
		beq $21, 0, reset
cont:		add $16, $16, 4
      		addi $19, $19, 1
      		j for2

reset:		addi $20, $0, 6
            	addi $21, $0, 58
		j cont
		
print:		sw $17, 0($16)
		addi $20, $20, -1
		j cont
                  
exit2:      	addi $29, $29, +28
		lw $21, +24($29)
		lw $20, +20($29)
		lw $19, +16($29)
		lw $18, +12($29)
		lw $17, +8($29)
		lw $16, +4($29)
		lw $31, 0($29)
		jr $31
#--------------------------------------------------------------------------------#
#$16 - endereço
#$17 - cor
#$18 - número de pixels
#$19 - quebrador de linha
#$20 - num de linha
#$22 - num de saidas do tubo
#$21 - contador 

tubo:		sw $31, 0($29)
      		sw $16, -4($29)
      		sw $17, -8($29)
      		sw $18, -12($29)
      		sw $19, -16($29)
      		sw $20, -20($29)
      		sw $21, -24($29)
      		sw $22, -28($29)
      		addi $29, $29, -32
      		
   		addi $17, $0, 0x00000000
   		lui $16, 0x1001
   		addi $16, $16, 1000
   		addi $21, $0, 4

forTubo: 	beq $19, 41, resetTubo
		beq $21, 1, contTubo
		beq $21, 2, contTubo
		beq $21, 3, contTubo
		beq $21, 4, contTubo
		beq $21, $0, roxo
contTubo:	sw $17, 0($16)
      		addi $16, $16, 256
      		addi $21, $21, -1
      		addi $19, $19, 1
      		beq $23, 3, fimTubo
      		j forTubo
      		
resetTubo:	addi $17, $0, 0x00000000
   		addi $21, $0, 4
   		addi $19, $0, 0
   		addi $23, $23, 1
   		j forTubo
   		
roxo:		addi $17, $0, 0x00ff00ff
		j contTubo		   		

fimTubo:	addi $29, $29, +32
		lw $22, +28($29)
		lw $21, +24($29)
		lw $20, +20($29)
		lw $19, +16($29)
		lw $18, +12($29)
		lw $17, +8($29)
		lw $16, +4($29)
		lw $31, 0($29)
		jr $31
		
#--------------------------------------------------------------------------------#
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
