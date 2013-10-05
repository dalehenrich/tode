as yet unclassified
elementSource
  ^ self isMethodForBlock
    ifTrue: [ self object sourceString ]
    ifFalse: [ self theBehavior sourceCodeAt: self selector ]