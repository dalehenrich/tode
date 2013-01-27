as yet unclassified
superclassesOf: classProxy
  ^ self
    doInSession: [ :sess | 
      sess
        receiverNB: self currentEngine
        performNoDebug: #'superclassesOf:level:'
        withArgs:
          {classProxy.
          2} ]