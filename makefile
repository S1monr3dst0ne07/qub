


TARGET=prg/bell.baabnq

run: build 
	v -f build

d: build # run and decode
	v -f build | python3 decode.py

build: $(TARGET) qub.baabnq
	c -i $(TARGET) -o build


