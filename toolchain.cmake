# Define the system and toolchain
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(RPI_GCC_TRIPLE "aarch64-linux-gnu")

# Specify the cross compiler
set(CMAKE_C_COMPILER ${RPI_GCC_TRIPLE}-gcc)
set(CMAKE_CXX_COMPILER ${RPI_GCC_TRIPLE}-g++)

set(RPI_SYSROOT $ENV{HOME}/raspberry/rpi-sysroot)

# Specify the location of the target sysroot (optional)
set(CMAKE_SYSROOT ${RPI_SYSROOT})

# Specify the location of the C and C++ standard libraries (optional)
set(CMAKE_FIND_ROOT_PATH ${RPI_SYSROOT})

# Ensure that only the files inside the sysroot are used
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)