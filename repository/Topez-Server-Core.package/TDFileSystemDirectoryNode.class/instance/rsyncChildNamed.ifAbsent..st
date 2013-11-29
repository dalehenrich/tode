rsync
rsyncChildNamed: childName ifAbsent: absentBlock
  | dir newNode fileName |
  fileName := childName , self stonFileExtension.
  dir := self fileDirectory.
  (dir fileExists: fileName)
    ifFalse: [ ^ absentBlock value ].
  dir
    readOnlyFileNamed: fileName
    do: [ :fileStream | newNode := STON fromStream: fileStream ].
  ^ newNode