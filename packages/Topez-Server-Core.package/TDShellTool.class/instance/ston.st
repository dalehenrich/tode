as yet unclassified
ston
  "
  ston export <path> <server-file-path>
  ston import <path> <server-file-path>
"

  | command path filePath dir node fileName |
  command := tokens at: 2.
  path := tokens at: 3.
  filePath := tokens at: 4.
  dir := ServerFileDirectory forFileName: filePath.
  fileName := ServerFileDirectory localNameFor: filePath.
  command = 'export'
    ifTrue: [ 
      node := topez lookup: path.
      dir
        forceNewFileNamed: fileName
        do: [ :fileStream | STON put: node onStream: fileStream ] ].
  command = 'import'
    ifTrue: [ 
      dir
        readOnlyFileNamed: fileName
        do: [ :fileStream | node := STON fromStream: fileStream ].
      (topez ensureChildrenExistIn: path) addChildNode: node ]