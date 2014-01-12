accessing
resolveHaloNamed: childName for: aParentNode ifAbsent: absentBlock
  | node |
  node := self halos at: childName ifAbsent: [  ].
  node ifNil: [ ^ absentBlock value ].
  ^ node value: aParentNode