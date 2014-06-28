comparing
= anObject
  self == anObject
    ifTrue: [ ^ true ].
  self class = anObject class
    ifFalse: [ ^ false ].
  self comments = anObject comments
    ifFalse: [ ^ false ].
  self body = anObject body
    ifFalse: [ ^ false ].
  ^ true