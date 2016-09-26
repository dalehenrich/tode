as yet unclassified
elementSource: classDefinition clientSourceElement: clientSourceElement
  ((self object isKindOf: TDDefinition) and: [ self object username notNil ])
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
                    with: self object username
                    with: self object pass.
                  session topez: topez.
                  [ 
                  session perform: #'login'.
                  session abort.
                  session perform: #'logoutOnClose:' with: true.
                  session perform: #'executeString:' with: classDefinition.
                  session commit.
                  ^ true ]
                    ensure: [ session logout ] ] ] ] ]
    ifFalse: [ GsDeployer bulkMigrate: [ classDefinition evaluate ] ].
  clientSourceElement topez resetAllGlobalNames.
  ^ true