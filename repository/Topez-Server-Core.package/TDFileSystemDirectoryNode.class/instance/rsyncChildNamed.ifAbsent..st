rsync
rsyncChildNamed: childName ifAbsent: absentBlock
  | dir newNode |
  dir := self fileDirectory.
  dir fileExists: childName ifFalse: [ ^ absentBlock value ].
  dir
    readOnlyFileNamed: childName
    do: [ :fileStream | newNode := STON fromStream: fileStream ].
  ^ newNode