*topez-server-cypresstools
kindOfSubclass
  "for printing only"

  | ty |
  ty := self subclassType.
  ty = ''
    ifTrue: [ ^ ' subclass: ' ].
  ty = 'indexableSubclass'
    ifTrue: [ ^ ' variableSubclass: ' ].
  ty = 'byteSubclass'
    ifTrue: [ ^ ' variableByteSubclass: ' ].
  self error: 'Unrecognized class type'