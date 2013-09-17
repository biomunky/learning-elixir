## binaries are enclosed in << x >>

b = << 1, 2, 3>>

size b 
# 3

c = <<3 ::size(2), 5 :: size(4), 1 :: size(2)>>

size c
# 1

:binary.bin_to_list(b)

#[1,2,3]

#Prag Dave says not to worry about this stuff for the moment - i am going to totally trust him