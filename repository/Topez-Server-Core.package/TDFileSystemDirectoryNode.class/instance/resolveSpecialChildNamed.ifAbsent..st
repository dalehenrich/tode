as yet unclassified
resolveSpecialChildNamed: childName ifAbsent: absentBlock
  childName = '..'
    ifTrue: [ ^ self parent ].
  childName = '.'
    ifTrue: [ ^ self ].
  self topez
    ifNotNil: [ 
      (self topez resolveSpecialNamed: childName)
        ifNotNil: [ :childNode | ^ childNode ] ].
  ^ absentBlock value