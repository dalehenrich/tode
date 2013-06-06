as yet unclassified
ston
  "ston export <path> <server-file-path>
        export <path> @<server-path>
   ston import <path> <server-file-path>
        import <path> @<server-path>
  "

  | command path fileSystemPath dir node fileName |
  command := tokens at: 2.
  path := tokens at: 3.
  fileSystemPath := (self resolveAtPathReference: (tokens at: 4)) asString.
  command = 'export'
    ifTrue: [ 
      node := topez lookup: path.
      self stonExportNode: node to: fileSystemPath ].
  command = 'import'
    ifTrue: [ 
      node := self
        stonImportFrom: fileSystemPath
        to: (topez ensureChildrenExistIn: path) ].
  ^ node