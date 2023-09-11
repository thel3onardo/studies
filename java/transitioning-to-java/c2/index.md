### Code, Compile, and Execute

JShell -> REPL in Java
    JShell became a standard only in Java 9.

#### The first program

We're gonna implement the compound interest formula:

> A = P(1 + r/n)^nt

#### The two-step compile and execute process - javac and java/javaw

javac compiles the code -> then the java or javaw(for windows) execute it in JVM

javac compiles the code to bytecode
    - Bytecode is the machine language of the JVM

After executing the javac command, it will generate a new .class file
    - This file will contain all the bytecode and sourcecode (the sourcecode is used to support the concepts of reflection and introspection)

    > "Introspection allows you to write code that can examine the type or properties of an object at runtime, whereas reflection allows you to write code that can examine and modify the structure of an object at runtime. These two features are rarely used in business programming."

#### Single-File source-code programs
Before Java 11, the process of going from source code to execution was a two-step process. First you needed to compile the code, and then run it in the JVM.

Now, yhou can compile, start up the JVM, and execute the program in a single line.

    > This single file should contain at least one class with a main method.

    This method does not create a bytecode .class file, it is only created in memory.