as yet unclassified
findMatchingPackages: pattern topez: aTopez
  | regex pkgNode parser packages |
  pkgNode := aTopez lookup: self pkgsPath.
  packages := pkgNode basicContents value ifNil: [ ^ packages ].
  parser := RxParser safelyParse: pattern.
  parser ifNil: [ ^ packages ].
  regex := RxParser preferredMatcherClass for: parser ignoreCase: true.
  ^ packages select: [ :pkg | regex search: pkg name ]