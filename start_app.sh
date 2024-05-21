#!/bin/bash

clean=false
run=false
analyze=false
delete=false
help=false
silent=false

for arg in "$@"
do
  case $arg in
    -c|--clean)
    clean=true
    shift
    ;;
    -r|--run)
    run=true
    shift
    ;;
    -a|--analyze)
    analyze=true
    shift
    ;;
    -d|--delete)
    delete=true
    shift
    ;;
    -h|--help)
    help=true
    shift
    ;;
    -s|--silent)
    silent=true
    shift
    ;;
  esac
done

if [ "$help" = true ]; then
  echo "Usage: script.sh [options]"
  echo ""
  echo "This script automates the Flutter project setup and management tasks. It performs the following steps:"
  echo "  1. Optionally Cleans the project directory and gets the necessary Flutter packages."
  echo "  2. Optionally removes all generated files."
  echo "  3. Generates new files using build_runner."
  echo "  4. Optionally analyzes the project for any issues."
  echo "  5. Optionally runs the Flutter project on a connected device or emulator."
  echo ""
  echo "Options:"
  echo "  -c, --clean     Execute 'flutter clean' and 'flutter pub get'"
  echo "  -r, --run       Execute 'flutter run'"
  echo "  -a, --analyze   Execute 'flutter analyze'"
  echo "  -d, --delete    Remove all generated files"
  echo "  -h, --help      Show this help message"
  echo "  -s, --silent    Silent mode (no output)"
  exit 0
fi

function silent_echo {
  if [ "$silent" != true ]; then
    echo -e "$1"
  fi
}

if [ "$clean" = true ]; then
  silent_echo "\n\033[1;34mClean\033[0m"
  flutter clean
  rm -rf pubspec.lock

  silent_echo "\n\033[1;34mGet packages\033[0m"
  flutter pub get
fi

if [ "$delete" = true ]; then
  silent_echo "\n\033[1;34mRemove all generated files\033[0m"
  find . -maxdepth 20 -type f \( -name "*.inject.summary" -o -name "*.freezed.dart" -o -name "*.g.dart" \) -delete
fi

silent_echo "\n\033[1;34mGenerate files\033[0m"
dart run build_runner build --delete-conflicting-outputs

if [ "$analyze" = true ]; then
  silent_echo "\n\033[1;34mAnalyze\033[0m"
  flutter analyze
fi

if [ "$run" = true ]; then
  silent_echo "\n\033[1;34mRun\033[0m"
  flutter run
fi
