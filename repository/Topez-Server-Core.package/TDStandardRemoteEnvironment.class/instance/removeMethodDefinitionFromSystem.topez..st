definitions
removeMethodDefinitionFromSystem: aMethodDefinition topez: topez
  self username
    ifNotNil: [ 
      "remove the method in a remote session --- if we can"
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
                  session
                    perform: #'executeBlock:with:with:'
                    with: [ :behaviorOop :selector | 
                      (Object _objectForOop: behaviorOop) removeSelector: selector.
                      true ]
                    with: aMethodDefinition theBehavior asOop
                    with: aMethodDefinition selector.
                  session commit ]
                    ensure: [ session logout ].
                  topez commitTransaction.
                  ^ true ] ] ] ].
  ^ super removeMethodDefinitionFromSystem: aMethodDefinition topez: topez