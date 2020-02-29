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
