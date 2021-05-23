#include <stdio.h>
#include <linux/kernel.h>
#include <sys/syscall.h>
#include <unistd.h>

int main(int argc, char const *argv[])
{
    long int amma = syscall(326);
    printf("%ld\n",amma);
    return 0;
}
