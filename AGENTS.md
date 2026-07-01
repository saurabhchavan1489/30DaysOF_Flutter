# Agent Instructions for flutter_catalog

## Project type
- Flutter application scaffold.
- Primary source code is in `lib/main.dart`.
- Minimal dependency surface: only `flutter`, `cupertino_icons`, and `flutter_test`.

## Key workflows
- `flutter pub get` to install or refresh dependencies.
- `flutter analyze` to validate Dart analysis.
- `flutter test` to run the test suite.
- `flutter run -d <device>` to preview the app on a device, emulator, or simulator.

## Preview guidance
- This repository is a simple Flutter preview UI app.
- Prefer small, readable widget hierarchies in `lib/main.dart`.
- Use standard Flutter widgets such as `MaterialApp`, `Scaffold`, `Center`, `Container`, `Column`, `Row`, `Text`, `Icon`, and `ElevatedButton`.
- Do not add packages unless a new dependency is necessary for a real feature requirement.
- Keep styling lightweight and avoid complex application architecture changes.

## Development conventions
- Preserve starter app style and Flutter idioms.
- For UI changes, edit `lib/main.dart`; there is no larger app architecture yet.
- Keep the app compatible with Dart SDK `^3.12.2` and current Flutter stable patterns.
- Prefer declarative Flutter code and avoid over-engineering for a preview project.

## Notes for agents
- This is not a production app; keep changes simple and easy to understand.
- Avoid introducing new packages unless explicitly asked to implement a feature that requires them.
- If asked for a preview, focus on making the UI functional and visually clear, not polished or complete.

## Helpful references
- Project README: `README.md`
- Package configuration: `pubspec.yaml`
