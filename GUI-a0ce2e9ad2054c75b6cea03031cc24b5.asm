.text
main: lui $7, 0x1001
      lui $9, 0x00ff #0x00ff0000
      lui $8, 0x0004 #0x00040000
      addi $10, $0, 64
for:  beq $10, $0, fimL
      sw $9,0($7)
      sub $9, $9, $8
      addi $7, $7, 4
      addi $10, $10, -1
      j for
      
fimL: addi $9, $0, 0x00ff 
      sll $9, $9, 8 #0xff0000
      addi $8, $0, 0x04 
      sll $8, $8, 8 #0x040000
      addi $10, $0, 64
for2:  beq $10, $0, fimT
      sw $9,0($7)
      sub $9, $9, $8
      addi $7, $7, 4
      addi $10, $10, -1
      j for2      
      
fimT: addi $2, $0, 10
      syscall      