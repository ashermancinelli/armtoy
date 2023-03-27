#include <unistd.h>
const char * str = "abcd\n";
int main() {
  // ssize_t write(int fd, const void *buf, size_t count);
  write(1, str, 5);
  return str[0];
}
