rsync
rsyncChildNamed: childName ifAbsent: absentBlock
  "receiver is a destination node"

  | dir newNode fileName |
  fileName := childName , self stonFileExtension.
  dir := self fileDirectory.
  (dir fileExists: fileName)
    ifFalse: [ ^ absentBlock value ].
  dir
    readOnlyFileNamed: fileName
    do: [ :fileStream | newNode := STON fromUTF8EncodedString: fileStream contents ].
  ^ newNode