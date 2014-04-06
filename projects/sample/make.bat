:: No batch command output.
@echo off

:: Define the project path used. Spaces are code, don't add some before or after the "=".
:: Must be terminated with a slash for the script to work. The compiler does not care.
set projectPath=%~dp0
set compilerPath=%projectPath%..\..\compiler\compiler.exe

:: Checks compiler path.
if not exist %compilerPath% (
	echo No compiler found
	echo.
	pause
	exit
)

:: Compiles the project.
echo Compiling...
echo.
%compilerPath% /project:%projectPath% /platform:windows /libpath:%projectPath%..\..\libraries
echo.

:: Retrieve the folder name (used by the compiler to generate the executable name).
set projectPath2=%projectPath:~0,-1%
for %%f in (%projectPath2%) do set folder=%%~nxf

:: Quit if the application does not exist.
if not exist %projectPath%%folder%.exe (
	echo No %folder%.exe executable found in %projectPath%
	echo.
	pause
	exit
)

:: Execute the newly generated application.
echo Executing...
echo.
echo ----------
echo.
%projectPath%%folder%.exe
echo.
echo ----------
echo.

:: Simply pausing to see the output.
pause
exit