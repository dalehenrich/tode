as yet unclassified
findMatchingPackages: pattern topez: aTopez
  | regex pkgNode parser |
  parser := RxParser safelyParse: pattern.
  parser ifNil: [ ^ #() ].
  regex := RxParser preferredMatcherClass for: parser ignoreCase: true.
  pkgNode := aTopez lookup: self pkgsPath.
  ^ pkgNode basicContents value select: [ :pkg | regex search: pkg name ]