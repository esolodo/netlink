
obj-m:=nl_kernel.o
  
KERNELDIR:=/lib/modules/$(shell uname -r)/build
PWD:=$(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
	gcc -o nl_user nl_user.c
clean:
	rm -rf *.order *.symvers *.o *.mod.c *.mod.o *.ko

