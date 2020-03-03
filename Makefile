TARGET: exe1 exe2

exe1: reader.o shm_demo.o
	gcc reader.o shm_demo.o -o reader

exe2: writer.o shm_demo.o
	gcc writer.o shm_demo.o -o writer

reader.o:
	gcc -c reader.c -o reader.o
shm_demo.o:
	gcc -c shm_demo.c -o shm_demo.o
writer.o:
	gcc -c writer.c -o writer.o

clean:
	rm -rf writer.o reader.o shm_demo.o writer reader
