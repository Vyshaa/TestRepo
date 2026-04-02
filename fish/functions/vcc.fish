function vcc
cc -Wall -Wextra -Werror *.c
valgrind ./a.out $argv
rm a.out
end
