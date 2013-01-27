as yet unclassified
deleteClassElement: aTZClassElementProxy
  ^ self
    doInSession: [ :sess | sess receiverNB: self currentEngine performNoDebug: #'deleteClassElement:' withArgs: {aTZClassElementProxy} ]