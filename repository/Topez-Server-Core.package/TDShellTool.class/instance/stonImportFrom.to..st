as yet unclassified
stonImportFrom: fileSystemPath to: parentNode
  | dir fileName node |
  dir := ServerFileDirectory forFileName: fileSystemPath.
  fileName := ServerFileDirectory localNameFor: fileSystemPath.
  dir
    readOnlyFileNamed: fileName
    do: [ :fileStream | node := self objectSerializer fromString: fileStream contents ].
  parentNode addChildNode: node.
  ^ node