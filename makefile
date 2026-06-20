


TARGET=prg/sort.baabnq

run: build # run and decode
	v -f build | python3 decode.py

raw: build # only run
	v -f build

build: $(TARGET) qub.baabnq
	c -i $(TARGET) -o build


