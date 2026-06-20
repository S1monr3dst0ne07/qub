


TARGET=prg/bell.baabnq

run: build 
	v -f build

rund: build # run and decode
	v -f build | xargs -I{} futil -d {} -p

build: $(TARGET) qub.baabnq
	c -i $(TARGET) -o build


