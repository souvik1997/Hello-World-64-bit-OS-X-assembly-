all:
	nasm -f macho64 main.s
	ld -o main main.o
clean:
	rm main
	rm main.o
