MAKE = make

.PHONY: default all

default: all

all: kernel

kernel: 
	pushd src/kernel && $(MAKE) && popd

user:
	pushd src/user && $(MAKE) && popd

run: all
	./run.sh

.PHONY: clean
clean:
	rm -rf bin obj jackOS.iso