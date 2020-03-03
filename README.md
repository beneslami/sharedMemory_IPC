# sharedMemory_IPC
shared memory implementation for Inter process communication

name of the shared memory which is passed to the shm_open() functio should be a string and starts with "/" e.g /Data_segment

int shm_open(const char* name, int oflag, mode_t mode);
return value is a file descriptor which is an int number;

int ftruncate(int shm_fd, size_t new_size);
it resizes the shared memory object to a new size

\#include <sys/mman.h>
void* mmap(void* addr, size_t length, int prot, int flags, int fd, off_t offset);
it maps the kernel shared memory to the process's virtual address space. addr usaully is set to NULL which means OS decided which part of the virtual address space of the process should be mapped to the kernel shared memory.

int munmap(void* addr, size_t length);
addr is the address in process virtual address space. It does not destroy the shared memory but only destroy the mapping between the shared memory in the kernel space and virtual memory of the process.

int shm_unlink(const char* name);
It de-associate shared memory with its name. it is equivalent to like no shared memory with the same name exists.
---------------
writer.c: responsible for creating and adding contents to the SHM (Publisher)

reader.c responsible for reading the content in SHM (Subscriber)
