transactions
sourceContainingIt: aString
  self setFindText: aString.
  ^ self
    doInSession: [ :sess | 
      sess
        receiverNB: self currentEngine
        performNoDebug: 'sourceContainingIt:level:'
        withArgs:
          {aString.
          2} ]