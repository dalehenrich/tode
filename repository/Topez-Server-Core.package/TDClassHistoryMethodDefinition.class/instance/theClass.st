accessing
theClass
  | cl |
  cl := super theClass.
  cl ifNil: [ ^ nil ].
  ^ cl classHistory at: self classHistoryIndex