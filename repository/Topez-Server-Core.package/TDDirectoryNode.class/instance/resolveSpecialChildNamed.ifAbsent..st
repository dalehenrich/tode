as yet unclassified
resolveSpecialChildNamed: childName ifAbsent: absentBlock
  childName = '..'
    ifTrue: [ ^ self parent ].
  childName = '.'
    ifTrue: [ ^ self ].
  self topez ifNil: [ ^ absentBlock value ].
  (self topez resolveSpecialNamed: childName)
    ifNotNil: [ :childNode | ^ childNode ].
  ^ self topez resolveHaloNamed: childName for: self ifAbsent: absentBlock