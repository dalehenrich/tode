as yet unclassified
theClass
  | cl |
  cl := self symbolList objectNamed: self theClassName.
  cl ifNil: [ ^ nil ].
  cl isBehavior
    ifFalse: [ ^ nil ].
  ^ cl