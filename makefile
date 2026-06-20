
VM=./vm
BC=c


TARGET=prg/mybell.baabnq

run: compile # run and decode
	#v -f build | python3 decode.py
	$(VM) build | python3 decode.py

raw: compile # only run
	$(VM) build

debug: compile # differential debugging
	$(VM) build > raw.vm.txt
	v -f build > raw.v.txt
	diff raw.vm.txt raw.v.txt
	-rm raw.vm.txt raw.v.txt

compile: $(TARGET) qub.baabnq
	$(BC) -i $(TARGET) -o build


