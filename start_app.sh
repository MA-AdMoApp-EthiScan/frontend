echo -e "\n\033[1;34mClean\033[0m"
flutter clean
rm -rf pubspec.lock

echo -e "\n\033[1;34mGet packages\033[0m"
flutter pub get

echo -e "\n\033[1;34mGenerate files\033[0m"
dart run build_runner build --delete-conflicting-outputs

echo -e "\n\033[1;34mAnalyze\033[0m"
flutter analyze

#echo -e "\n\033[1;34mRun\033[0m"
#flutter run