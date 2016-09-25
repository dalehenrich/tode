as yet unclassified
elementSource
  self object username
    ifNotNil: [ 
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
                    with: self object username
                    with: self object pass.
                  session topez: topez.
                  [ 
                  session perform: #'login'.
                  session abort.
                  session perform: #'logoutOnClose:' with: true.
                  ^ session
                    perform: #'classDefinitionCreationStringFor:'
                    with: self theClass ]
                    ensure: [ session logout ] ] ] ] ].
  ^ self theClass definition