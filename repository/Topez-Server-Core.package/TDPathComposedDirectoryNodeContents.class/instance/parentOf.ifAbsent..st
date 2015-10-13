private
parentOf: aNodeName ifAbsent: absentBlock
  | entry |
  entry := self entryList
    detect: [ :entry | entry hasChildNamed: aNodeName ]
    ifNone: [ ^ absentBlock value ].
  ^ entry node