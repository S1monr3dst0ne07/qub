


TARGET=prg/sort.baabnq

run: compile # run and decode
	#v -f build | python3 decode.py
	./vm build | python3 decode.py

raw: compile # only run
	./vm build

debug: compile # differential debugging
	./vm build > raw.vm.txt
	v -f build > raw.v.txt
	diff raw.vm.txt raw.v.txt
	-rm raw.vm.txt raw.v.txt

compile: $(TARGET) qub.baabnq
	c -i $(TARGET) -o build


