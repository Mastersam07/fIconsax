## 0.0.4

* Fix compile error on modern Flutter: `IconData` is now `final` and can no longer be
  subclassed. Replaced the `IconsaxData extends IconData` helper with direct `const IconData`
  values carrying `fontPackage: 'ficonsax'`.
* Remove exports of unimplemented styles (broken, crypto, linear, two-tone) that had no
  fonts or icons.
* Widen SDK constraint to support Dart 3 (`>=2.17.0 <4.0.0`).
* Add real tests (switched dev dependency from `test` to `flutter_test`).

## 0.0.3

* Add iconsax bulk variation.

## 0.0.2

* Add iconsax outline variation.

## 0.0.1

* Add iconsax bold variation.
* Add example app.
