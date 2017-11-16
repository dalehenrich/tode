compilation
compile: source classified: methodProtocol in: theBehavior
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
                    perform: #'sessionForStone:userName:password:'
                    with: topez sessionDescription stoneName
                    with: self username
                    with: self pass.
                  session topez: topez.
                  [ 
                  session perform: #'login'.
                  session abort.
                  session perform: #'logoutOnClose:' with: true.
                  selector := session
                    perform: #'compile:inClass:classified:'
                    with: source
                    with: theBehavior
                    with: methodProtocol.
                  session commit ]
                    ensure: [ session logout ].
                  (theBehavior transientMethodDictForEnv: 0)
                    ifNotNil: [ :tMD | 
                      "clean up session methods if present"
                      (tMD at: selector otherwise: nil)
                        ifNotNil: [ :ignored | theBehavior removeSelector: selector ] ].
                  topez commitTransaction.
                  ^ selector ] ] ] ].
  ^ super compile: source classified: methodProtocol in: theBehavior