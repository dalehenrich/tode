as yet unclassified
resolveSpecialChildNamed: childName ifAbsent: absentBlock
  childName = '..'
    ifTrue: [ ^ self parent ].
  childName = '.'
    ifTrue: [ ^ self ].
  ^ absentBlock value