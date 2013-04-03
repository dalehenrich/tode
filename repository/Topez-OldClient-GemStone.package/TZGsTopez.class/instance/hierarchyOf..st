transactions
hierarchyOf: classProxy
  ^ self
    doInSession: [ :sess | 
      sess
        receiverNB: self currentEngine
        performNoDebug: #'hierarchyOf:level:'
        withArgs:
          {classProxy.
          2} ]