# enableMe

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Generated by the [Very Good CLI][very_good_cli_link] 🤖
---

## Screenshots
<img src="screenshots/m1.png" width="40%"><img src="screenshots/mo1.png" width="40%">
<img src="screenshots/mo2.png" width="40%"><img src="screenshots/mo3.png" width="40%">
<img src="screenshots/mo4.png" width="40%"><img src="screenshots/mo5.png" width="40%">
<img src="screenshots/mo6.png" width="40%"><img src="screenshots/mo7.png" width="40%">
<img src="screenshots/mo8.png" width="40%"><img src="screenshots/mo9.png" width="40%">

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --target lib/main_development.dart

# Staging
$ flutter run --target lib/main_staging.dart

# Production
$ flutter run --target lib/main_production.dart
```

_\*enableMe works on iOS, Android, Web, and Windows._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```
---

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli