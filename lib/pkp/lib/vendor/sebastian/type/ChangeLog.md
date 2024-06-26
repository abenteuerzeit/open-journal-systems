# ChangeLog

All notable changes are documented in this file using the [Keep a CHANGELOG](https://keepachangelog.com/) principles.

## [2.3.1] - 2020-10-26

### Fixed

* `SebastianBergmann\Type\Exception` now correctly extends `\Throwable`

## [2.3.0] - 2020-10-06

### Added

* [#14](https://github.com/sebastianbergmann/type/issues/14): Support for `static` return type that is introduced in PHP 8

## [2.2.2] - 2020-09-28

### Changed

* Changed PHP version constraint in `composer.json` from `^7.3 || ^8.0` to `>=7.3`

## [2.2.1] - 2020-07-05

### Fixed

* Fixed handling of `mixed` type in `ReflectionMapper::fromMethodReturnType()`

## [2.2.0] - 2020-07-05

### Added

* Added `MixedType` object for representing PHP 8's `mixed` type

## [2.1.1] - 2020-06-26

### Added

* This component is now supported on PHP 8

## [2.1.0] - 2020-06-01

### Added

* Added `UnionType` object for representing PHP 8's Union Types
* Added `ReflectionMapper::fromMethodReturnType()` for mapping `\ReflectionMethod::getReturnType()` to a `Type` object
* Added `Type::name()` for retrieving the name of a type
* Added `Type::asString()` for retrieving a textual representation of a type

### Changed

* Deprecated `Type::getReturnTypeDeclaration()` (use `Type::asString()` instead and prefix its result with `': '`)
* Deprecated `TypeName::getNamespaceName()` (use `TypeName::namespaceName()` instead)
* Deprecated `TypeName::getSimpleName()` (use `TypeName::simpleName()` instead)
* Deprecated `TypeName::getQualifiedName()` (use `TypeName::qualifiedName()` instead)

## [2.0.0] - 2020-02-07

### Removed

* This component is no longer supported on PHP 7.2

## [1.1.3] - 2019-07-02

### Fixed

* Fixed class name comparison in `ObjectType` to be case-insensitive

## [1.1.2] - 2019-06-19

### Fixed

* Fixed handling of `object` type

## [1.1.1] - 2019-06-08

### Fixed

* Fixed autoloading of `callback_function.php` fixture file

## [1.1.0] - 2019-06-07

### Added

* Added support for `callable` type
* Added support for `iterable` type

## [1.0.0] - 2019-06-06

* Initial release based on [code contributed by Michel Hartmann to PHPUnit](https://github.com/sebastianbergmann/phpunit/pull/3673)

[2.3.1]: https://github.com/sebastianbergmann/type/compare/2.3.0...2.3.1
[2.3.0]: https://github.com/sebastianbergmann/type/compare/2.2.2...2.3.0
[2.2.2]: https://github.com/sebastianbergmann/type/compare/2.2.1...2.2.2
[2.2.1]: https://github.com/sebastianbergmann/type/compare/2.2.0...2.2.1
[2.2.0]: https://github.com/sebastianbergmann/type/compare/2.1.1...2.2.0
[2.1.1]: https://github.com/sebastianbergmann/type/compare/2.1.0...2.1.1
[2.1.0]: https://github.com/sebastianbergmann/type/compare/2.0.0...2.1.0
[2.0.0]: https://github.com/sebastianbergmann/type/compare/1.1.3...2.0.0
[1.1.3]: https://github.com/sebastianbergmann/type/compare/1.1.2...1.1.3
[1.1.2]: https://github.com/sebastianbergmann/type/compare/1.1.1...1.1.2
[1.1.1]: https://github.com/sebastianbergmann/type/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/sebastianbergmann/type/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/sebastianbergmann/type/compare/ff74aa41746bd8d10e931843ebf37d42da513ede...1.0.0
