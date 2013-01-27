as yet unclassified
methodElementFor: behaviorProxy selector: selector
  ^ self
    doInSession: [ :sess | 
      sess
        receiverNB: self currentEngine
        performNoDebug: #'methodElementFor:selector:level:'
        withArgs:
          {behaviorProxy.
          selector.
          2} ]