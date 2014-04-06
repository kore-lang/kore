Kore SDK
========

Content
-------

This repository contains a ready-to-use architecture for software development using the Kore language :
- compiler binaries (including fasm.exe for assembling and polink.exe for link)
- libraries includes and binaries (Kore Library and Windows)
- a configured HelloWorld sample

How to compile a project ?
--------------------------

The projects/sample folder contains a make.bat file which is configured to compile any program put in projects/*. Juste duplicate it and execute it. If you want to put your sources in another folder, you should be able to update make.bat with minor changes, or call the compiler manually (see below). 

Compiler arguments
------------------

The compiler must be called from a command line with some arguments to compile a program. 
Example : compiler.exe /project:C:\kore\projects\sample /platform:windows /libpath:C:\kore\libraries

Arguments :

### /project (required)

Path to the folder of the project containing the code to compile.

### /libpath (required)

Path to the libaries folder (must contains at least Kore Library and Windows)

### /platform (required)

Platform used as a target. Only Windows is available at this time.

### /execute (optional)

If precised, this will execute the compiled program.