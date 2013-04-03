as yet unclassified
subclassesOf: classProxy
  ^ self
    doInSession: [ :sess | 
      sess
        receiverNB: self currentEngine
        performNoDebug: #'subclassesOf:level:'
        withArgs:
          {classProxy.
          2} ]