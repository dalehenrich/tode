mount
mount: directoryOrFilePath at: objectPath as: nodeName visitAsLeafNode: visitAsLeafNode
  | parentDir localPath fileOrDirName entry |
  ServerFileDirectory
    splitName: directoryOrFilePath
    to: [ :dirPath :localName | 
      parentDir := ServerFileDirectory on: dirPath.
      fileOrDirName := localName ].
  entry := fileOrDirName = ''
    ifTrue: [ parentDir directoryEntry ]
    ifFalse: [ parentDir directoryEntryFor: fileOrDirName ].
  entry
    ifNil: [ ^ self error: 'File or directory not found: ' , directoryOrFilePath printString ].
  ^ entry isDirectory
    ifTrue: [ 
      self
        mountDirectory: directoryOrFilePath
        at: objectPath
        as: nodeName
        visitAsLeafNode: visitAsLeafNode ]
    ifFalse: [ 
      self
        mountFile: directoryOrFilePath
        at: objectPath
        as: nodeName
        visitAsLeafNode: visitAsLeafNode ]