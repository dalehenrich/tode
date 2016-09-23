accessing
theClass
  | cl |
  cl := super theClass.
  cl
    ifNil: [ 
      | nm |
      nm := self theClassName.
      cl := ClassOrganizer cachedOrganizer classes
        detect: [ :cl | cl name = nm ]
        ifNone: [ ^ nil ] ].
  cl isBehavior
    ifFalse: [ ^ nil ].
  ^ cl classHistory at: self classHistoryIndex