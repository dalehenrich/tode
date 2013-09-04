as yet unclassified
parseLsFiles: aString
  "
100644 e5e1dc07079e3bc287bed9ed2aa9968b3dc2f05c 1	repository/External-Core.package/ExternalCore.class/class/authorName.st
100644 2f12c8e29a2857d09bcfe3fb085dbcc3be6d4ff1 2	repository/External-Core.package/ExternalCore.class/class/authorName.st
100644 800289781869417cbffdd2d26963e5ad184d0678 3	repository/External-Core.package/ExternalCore.class/class/authorName.st

"

  | strm dictionary line |
  strm := ReadStream on: aString.
  dictionary := Dictionary new.
  line := strm nextLine.
  [ line isEmpty ]
    whileFalse: [ 
      | fields subFields filename stage ar |
      fields := line findTokens: ' '.
      subFields := (fields at: 3) findTokens: String tab.
      filename := subFields at: 2.
      stage := (subFields at: 1) asInteger.
      ar := dictionary
        at: filename
        ifAbsent: [ dictionary at: filename put: (Array new: 3) ].
      ar at: stage put: fields.
      line := strm nextLine ].
  ^ dictionary