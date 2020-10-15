.data
    message: .asciiz "CA LAB"
.text

main:
li $t1,0
    la $t0,message
    

loop:
    lb   $a0,0($t0)
    beq $a0,counting
    addi $t0,$t0,1
    addi $t1,$t1,1
    j     loop
    
counting:
    li   $v0,1
    add  $a0, $0,$t1
    syscall

    li   $v0,10
    syscall