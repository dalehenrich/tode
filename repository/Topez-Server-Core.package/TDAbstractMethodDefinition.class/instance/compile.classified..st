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
              id > 0
                ifTrue: [ 
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
                  (self theBehavior transientMethodDictForEnv: 0)
                    ifNotNil: [ :tMD | 
                      "clean up session methods if present"
                      (tMD at: self selector otherwise: nil)
                        ifNotNil: [ :ignored | self theBehavior removeSelector: self selector ] ].
                  topez commitTransaction.
                  ^ selector ] ] ] ].
  ^ self theBehavior compile: source classified: methodProtocol