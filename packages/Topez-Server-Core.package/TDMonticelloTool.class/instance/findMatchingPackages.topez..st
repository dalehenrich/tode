as yet unclassified
findMatchingPackages: pattern topez: aTopez
  | regex pkgNode |
  regex := RxParser preferredMatcherClass for: (RxParser new parse: pattern) ignoreCase: true.
  pkgNode := aTopez lookup: self pkgsPath.
  ^ pkgNode basicContents value select: [ :pkg | regex search: pkg name ]