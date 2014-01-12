accessing
resolveSpecialNamed: childName
  childName = '~'
    ifTrue: [ ^ self homeNode ].
  ^ nil