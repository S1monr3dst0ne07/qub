


TARGET=prg/test.baabnq

run: build
	v -f build

build: $(TARGET)
	c -i $(TARGET) -o build


