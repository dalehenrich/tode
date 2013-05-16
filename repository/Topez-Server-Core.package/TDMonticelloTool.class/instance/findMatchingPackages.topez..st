as yet unclassified
findMatchingPackages: pattern topez: aTopez
  | regex parser workingCopies |
  workingCopies := MCWorkingCopy allManagers.
  parser := RxParser safelyParse: pattern.
  parser ifNil: [ ^ workingCopies ].
  regex := RxParser preferredMatcherClass for: parser ignoreCase: true.
  ^ workingCopies select: [ :wc | regex search: wc packageName ]