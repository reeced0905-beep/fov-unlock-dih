@echo off
REM Quick Build Script for infinizoom (Windows)

echo ================================
echo infinizoom Quick Build Script
echo ================================
echo.

REM Check if Java is installed
java -version >nul 2>&1
if errorlevel 1 (
    echo X ERROR: Java is not installed or not in PATH
    echo Please install Java 25+ and try again
    pause
    exit /b 1
)

REM Show Java version
echo + Checking Java version...
java -version
echo.

REM Run the build
echo Building infinizoom...
echo.

if exist "gradlew.bat" (
    call gradlew.bat build
) else (
    echo X ERROR: gradlew.bat not found
    echo Make sure you're in the project directory
    pause
    exit /b 1
)

echo.
echo ================================
echo + Build Complete!
echo ================================
echo.
echo Your compiled JAR is located at:
echo   build\libs\infinizoom-1.0.2.jar
echo.
pause
