as yet unclassified
backup
  | stream active statusNode |
  stream := TextStream on: Text new.
  stream
    nextPutAll: 'BACKUP: ' asText allBold , DateAndTime now printString;
    cr;
    cr.
  active := self activeNode.
  active dotSelfObject
    do: [ :projectName | 
      stream
        nextPutAll: (topez lookup: projectName , '/STATUS') contents;
        cr;
        cr ].
  statusNode := topez currentNode
    addChildNode:
      (TDTxtLeafNode new
        name: 'STATUS';
        contents: stream contents;
        yourself).
  true
    ifTrue: [ topez evaluateTopezScript: 'bu backup @backupFile' ].
  ^ statusNode