as yet unclassified
stonexport
  "
  ston export <path> <server-file-path>
       export <path> @<server-path>
  "

  | path fileSystemPath node arg |
  path := tokens at: 2.
  arg := tokens at: 3.
  fileSystemPath := (arg beginsWith: '@')
    ifTrue: [ (self resolveAtPathReference: arg) asString ]
    ifFalse: [ arg ].
  node := topez lookup: path.
  self stonExportNode: node to: fileSystemPath.
  ^ node