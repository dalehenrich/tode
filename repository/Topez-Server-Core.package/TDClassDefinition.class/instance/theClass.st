as yet unclassified
theClass
  | cl |
  cl := self symbolList objectNamed: self theClassName.
  cl
    ifNil: [ 
      | nm |
      nm := self theClassName.
      cl := ClassOrganizer cachedOrganizer classes
        detect: [ :cl | cl name = nm ]
        ifNone: [ nil ] ].
  cl isBehavior
    ifFalse: [ ^ nil ].
  ^ cl