# RideShare
a class-based Ride Sharing System 
g++ -std=c++11 -o RideSharingSystem -I./include -I./ src/*.cpp

# Ride Sharing System (C++ Implementation)

This directory contains the C++ implementation of a Ride Sharing System application. This version showcases memory management, the use of structs and classes, and Standard Template Library (STL) containers for managing application data.

## Project Structure

Repo/
│
└── cpp/
├── include/
│   ├── Driver.h
│   ├── PremiumRide.h
│   ├── Ride.h
│   ├── Rider.h
│   └── StandardRide.h
│
└── src/
├── Driver.cpp
├── PremiumRide.cpp
├── Ride.cpp
├── RideSharingSystem.cpp  ← Main C++ application.
├── Rider.cpp
└── StandardRide.cpp
└── README.md             ← This file.

## Running the C++ Application

This section provides instructions on how to set up your C++ development environment and run the Ride Sharing System application.

### Prerequisites

To compile and run the C++ version, you will need a C++ compiler installed on your system. Common compilers include:

* **GCC (GNU Compiler Collection):** Widely available on Linux and macOS.
* **Clang:** Another popular compiler, often the default on macOS and available on Linux.
* **Microsoft Visual C++ (MSVC):** Used with Visual Studio on Windows.

You may also want to have a development environment set up, such as:

* **VS Code:** With the C/C++ extension.
* **Visual Studio:** A comprehensive IDE for Windows.
* **Other IDEs:** Like CLion, Code::Blocks, etc.

### Compilation

Open a Terminal or Command Prompt and navigate to the `cpp/` directory of the repository.

Use a C++ compiler to compile the source files. Here are examples for GCC and Clang:

**Using GCC:**

```bash
g++ -std=c++11 -o RideSharingSystem -Iinclude src/*.cpp

Using Clang:

Bash

clang++ -std=c++11 -o RideSharingSystem -Iinclude src/*.cpp
-std=c++11: Enables C++11 features, which the code might be using (e.g., range-based for loops, override).
-o RideSharingSystem: Specifies the name of the output executable file.
-Iinclude: Tells the compiler to look for header files in the include/ directory.
src/*.cpp: Specifies all the C++ source files in the src/ directory to be compiled.
Running the Application
After successful compilation, an executable file named RideSharingSystem (or RideSharingSystem.exe on Windows) will be created in the cpp/ directory.

To run the application, execute the following command in your Terminal or Command Prompt (still within the cpp/ directory):

Bash

./RideSharingSystem
(On Windows, you might need to run RideSharingSystem.exe)

The application will then execute, demonstrating the core functionalities of the Ride Sharing System.

Additional Information
Memory Management: This C++ implementation explicitly manages memory using pointers and new/delete. Pay attention to the destructors in the classes to see how resources are cleaned up.
STL Containers: The application utilizes STL containers like std::vector to store collections of Ride objects for drivers and riders.
Classes and Structs: The code is organized using classes (Driver, Rider, Ride, StandardRide, PremiumRide) to represent the entities in the system and encapsulate their data and behavior. Inheritance is used to model different types of rides.
Header Files: The header files in the include/ directory declare the interfaces of the classes, while the source files in src/ provide their implementations.
Feel free to explore the include/ and src/ directories to understand the details of the C++ implementation.


This `README.md` file provides a good overview of the C++ implementation, its structure, compilation, and execution instructions, similar to the example you provided for the Expense Tracker. Remember to save this file as `README.md` inside the `cpp/` directory.