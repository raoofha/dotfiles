
def Settings( **kwargs ):
  return {
    'flags': [ '-x', 'c++','-std=c++17', '-Wall', '-Wextra', '-Werror', "-I/usr/include", "-isystem", "/usr/include/c++/8", "-isystem", "/usr/include/x86_64-linux-gnu/c++/8"],
  }
