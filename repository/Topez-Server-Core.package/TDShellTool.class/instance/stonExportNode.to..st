as yet unclassified
stonExportNode: node to: fileSystemPath
  | dir fileName |
  dir := ServerFileDirectory forFileName: fileSystemPath.
  fileName := ServerFileDirectory localNameFor: fileSystemPath.
  dir
    forceNewFileNamed: fileName
    do: [ :fileStream | fileStream nextPutAll: (self objectSerializer toString: node) ]