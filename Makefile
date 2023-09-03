.PHONY: icons build_runner build_runner_watch pigeons format analyze test
icons:
	fvm flutter pub run flutter_launcher_icons
build_runner:
	fvm flutter pub run build_runner build --delete-conflicting-outputs
build_runner_watch:
	fvm flutter pub run build_runner watch
pigeons:
	fvm flutter pub run pigeon --input pigeons/messages.dart
format:
	dart format .
analyze:
	fvm flutter analyze .
test:
	fvm flutter test
