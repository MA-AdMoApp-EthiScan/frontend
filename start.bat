@echo off
echo.
echo Clean
flutter clean
del /f /q pubspec.lock

echo.
echo Get packages
flutter pub get

echo.
echo Generate files
dart run build_runner build --delete-conflicting-outputs
