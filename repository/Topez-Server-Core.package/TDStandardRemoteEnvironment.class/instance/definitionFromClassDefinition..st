definitions
definitionFromClassDefinition: aClassDefinition
  self username notNil
    ifTrue: [ 
      Smalltalk
        at: #'TDGsExternalSession'
        ifPresent: [ :cls | 
          TDTopezServer instanceMap
            keysAndValuesDo: [ :id :topez | 
              id > 0
                ifTrue: [ 
                  | session |
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
                  ^ session
                    perform: #'classDefinitionCreationStringFor:'
                    with: aClassDefinition theClass ]
                    ensure: [ session logout ] ] ] ] ].
  ^ super definitionFromClassDefinition: aClassDefinition