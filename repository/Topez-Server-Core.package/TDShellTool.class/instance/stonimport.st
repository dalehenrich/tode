as yet unclassified
stonimport
  "
  ston import <path> <server-file-path>
       import <path> @<server-path>
  "

  | path fileSystemPath node arg |
  path := tokens at: 2.
  arg := tokens at: 3.
  fileSystemPath := (arg beginsWith: '@')
    ifTrue: [ (self resolveAtPathReference: arg) asString ]
    ifFalse: [ arg ].
  node := self
    stonImportFrom: fileSystemPath
    to: (topez ensureChildrenExistIn: path).
  ^ node