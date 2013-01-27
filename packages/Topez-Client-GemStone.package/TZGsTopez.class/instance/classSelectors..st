as yet unclassified
classSelectors: classProxy
  ^ self
    doInSession: [ :sess | 
      sess
        receiverNB: self currentEngine
        performNoDebug: #'selectorsForClass:inClass:level:'
        withArgs:
          {classProxy.
          true.
          2} ]