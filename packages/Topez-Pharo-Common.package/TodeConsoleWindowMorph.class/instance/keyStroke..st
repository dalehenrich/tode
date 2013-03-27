as yet unclassified
keyStroke: evt
  evt altKeyPressed
    ifFalse: [ self selectFrom: self text size + 1 to: self text size ].
  (evt keyValue = 30 or: [ evt keyValue = 11 ])
    ifTrue: [ 
      self model previousHistory.
      self selectFrom: self text size + 1 to: self text size.
      ^ true ].
  (evt keyValue = 31 or: [ evt keyValue = 12 ])
    ifTrue: [ 
      self model nextHistory.
      self selectFrom: self text size + 1 to: self text size.
      ^ true ].
  ^ super keyStroke: evt