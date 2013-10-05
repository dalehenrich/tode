as yet unclassified
theClass
  | cl |
  cl := self symbolList objectNamed: self theClassName.
  cl
    ifNil: [ 
      | nm |
      nm := self theClassName.
      ^ ClassOrganizer cachedOrganizer classes
        detect: [ :cl | cl name = nm ]
        ifNone: [ nil ] ].
  ^ cl