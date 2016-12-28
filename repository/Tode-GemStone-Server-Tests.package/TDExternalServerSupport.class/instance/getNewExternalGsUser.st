private
getNewExternalGsUser
  | newExternalGsUser newSymbolList |
  newExternalGsUser := AllUsers userWithId: 'ExternalGsUser' ifAbsent: [ nil ].
  newExternalGsUser ~~ nil
    ifTrue: [ AllUsers removeAndCleanup: newExternalGsUser.
      System commit ].
  newSymbolList := SymbolList new
    addLast: self globals;
    addLast: self undefinedGlobals;
    addLast: self userGlobals;
    yourself.
  self
    createExternalClassNamed: 'UniqueExternalClass'
    superclass: (self globals at: #'Object')
    inDictionary: self userGlobals.
  newExternalGsUser := (AllUsers
    addNewUserWithId: 'ExternalGsUser'
    password: 'swordfish'
    defaultObjectSecurityPolicy: nil
    privileges:
      #('CodeModification' 'UserPassword' 'OtherPassword' 'CompilePrimitives')
    inGroups: #('DataCuratorGroup'))
    symbolList: newSymbolList;
    yourself.
  System commit.
  ^ newExternalGsUser