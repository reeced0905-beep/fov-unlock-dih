#!/usr/bin/env bash
set -euo pipefail

echo "================================"
echo "infinizoom Quick Build Script"
echo "================================"
echo ""

# Check if Java is installed
if ! command -v java &> /dev/null; then
    echo "❌ ERROR: Java is not installed or not in PATH"
    echo "Please install Java 25+ and try again"
    exit 1
fi

# Check Java version
JAVA_VERSION=$(java -version 2>&1 | head -1)
echo "✓ Using: $JAVA_VERSION"
echo ""

# Make gradlew executable
if [ -f "gradlew" ]; then
    chmod +x gradlew
fi

# Run the build
echo "Building infinizoom..."
echo ""

if [ -f "gradlew" ]; then
    ./gradlew build
else
    echo "❌ ERROR: gradlew not found"
    echo "Make sure you're in the project directory"
    exit 1
fi

echo ""
echo "================================"
echo "✓ Build Complete!"
echo "================================"
echo ""
echo "Your compiled JAR is located at:"
echo "  build/libs/infinizoom-1.0.2.jar"
echo ""
echo "To install to Minecraft mods folder:"
echo "  cp build/libs/infinizoom-1.0.2.jar ~/.minecraft/mods/"
echo ""
