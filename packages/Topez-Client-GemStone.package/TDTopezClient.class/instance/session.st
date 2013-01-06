as yet unclassified
session
  session
    ifNil: [ 
      session := self login.
      self topezServerProxy ].
  ^ session