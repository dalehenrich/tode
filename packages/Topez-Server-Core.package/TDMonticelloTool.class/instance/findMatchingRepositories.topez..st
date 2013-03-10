as yet unclassified
findMatchingRepositories: pattern topez: aTopez
  | regex repoNode parser repos |
  repoNode := aTopez lookup: self reposPath.
  repos := repoNode basicContents value ifNil: [ ^ repos ].
  parser := RxParser safelyParse: pattern.
  parser ifNil: [ ^ repos ].
  regex := RxParser preferredMatcherClass for: parser ignoreCase: true.
  ^ repos select: [ :repo | regex search: repo description ]