as yet unclassified
findFrameSuchThat: testBlock
  "Search self and my sender chain for first one that satisfies testBlock.  Return nil if none satisfy"

  | frame |
  frame := self.
  [ frame isNil ]
    whileFalse: [ 
      (testBlock value: frame)
        ifTrue: [ ^ frame ].
      frame := frame next ].
  ^ nil