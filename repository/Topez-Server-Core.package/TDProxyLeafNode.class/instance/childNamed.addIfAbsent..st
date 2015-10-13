as yet unclassified
childNamed: childName addIfAbsent: addIfAbsent
  ^ self
    childNamed: childName
    ifAbsent: [ 
      addIfAbsent
        ifFalse: [ ^ nil ].
      self error: 'cannot add  a child to a proxy leaf node' ]