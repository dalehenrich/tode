private
proxyForOop: anOop level: level
  ^ self
    doInSession: [ :sess | 
      sess
        receiverNB: self currentEngine
        performNoDebug: #'toString:level:'
        withArgs:
          {anOop.
          level} ]