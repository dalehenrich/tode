*tode-gemstone-server-core
stonImportUsing: stonTool parentNode: parentNode
  | newParentNode |
  newParentNode := parentNode childNamed: self localName addIfAbsent: true.
  self fileNames
    do: [ :filename | stonTool stonImportFrom: self pathString , '/' , filename to: newParentNode ].
  self directoryNames
    do: [ :dirName | 
      (self directoryNamed: dirName)
        stonImportUsing: stonTool
        parentNode: newParentNode ]