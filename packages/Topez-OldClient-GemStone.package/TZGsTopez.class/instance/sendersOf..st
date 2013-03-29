transactions
sendersOf: aString
  self setFindText: aString.
  ^ self
    doInSession: [ :sess | 
      sess
        receiverNB: self currentEngine
        performNoDebug: #'sendersOf:level:'
        withArgs:
          {aString.
          2} ]