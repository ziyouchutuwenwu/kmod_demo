export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

KERNELDIR := /home/mmc/dev/embedded/linux-4.9/

# module-objs := file1.o file2.o 如果模块依赖多个源文件，请添加这一句并相应地修改目标文件列表
obj-m := hello.o
    
PWD := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
	
clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean