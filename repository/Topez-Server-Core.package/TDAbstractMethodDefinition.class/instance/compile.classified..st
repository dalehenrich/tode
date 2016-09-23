compiling
compile: source classified: methodProtocol
  self username
    ifNotNil: [ 
      "compile the method in a remote session --- if we can"
      Smalltalk
        at: #'TDGsExternalSession'
        ifPresent: [ :cls | 
          TDTopezServer instanceMap
            keysAndValuesDo: [ :id :topez | 
              | session selector |
              "perhaps we should have a sessionDescription, too?"
              session := cls
                sessionForStone: topez sessionDescription stoneName
                userName: self username
                password: self pass.
              [ 
              session login.
              session abort.
              selector := session
                compile: source
                inClass: self theBehavior
                classified: methodProtocol.
              session commit ]
                ensure: [ session logout ].
              topez commitTransaction.
              ^ selector ] ] ].
  ^ self theBehavior compile: source classified: methodProtocol