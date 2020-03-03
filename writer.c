#include <stdio.h>
#include <string.h>

extern int create_and_write_shared_memory(char *mmap_key, char *value, unsigned int size);

int main(int argc, char **argv){
  char *key = "/test";
  char *content = "Hello it's ben and I'm trying to test shared memory";
  create_and_write_shared_memory(key, content, strlen(content));
  return 0;
}
