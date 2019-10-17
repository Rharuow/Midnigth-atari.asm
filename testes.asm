.global myprog

.text
.set noreorder
.ent myprog 

myprog:
loop: 
    la      $a0,Serial
    la      $a1,hello
    jal     _ZN5Print7printlnEPKc        
    nop

    jal     mydelay
    nop

    j       loop
    nop

mydelay:
    li      $a2, 1000
    addi    $a2, $a2, -1
    blez    mydelay     

    jr      $ra

.end myprog 

.data
hello:  .ascii "Hello, world!\0"