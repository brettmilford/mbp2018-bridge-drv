obj-m += bce.o
bce-objs := pci.o mailbox.o queue.o queue_dma.o vhci/vhci.o vhci/queue.o vhci/transfer.o audio/audio.o audio/protocol.o audio/protocol_bce.o audio/pcm.o

#MY_CFLAGS += -g -DDEBUG
#ccflags-y += ${MY_CFLAGS}
#CC += ${MY_CFLAGS}
KERNEL ?= $(shell uname -r)

all:
	make -C /lib/modules/$(KERNEL)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(KERNEL)/build M=$(PWD) clean
