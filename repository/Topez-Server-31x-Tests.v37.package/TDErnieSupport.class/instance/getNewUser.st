private
getNewUser
  | newUser newSymbolList |
  newUser := AllUsers userWithId: 'ErnieUser' ifAbsent: [ nil ].
  newUser ~~ nil
    ifTrue: [ AllUsers removeAndCleanup: newUser.
      System commit ].
  newSymbolList := SymbolList new
    addLast: self globals;
    addLast: self undefinedGlobals;
    addLast: self ernie;
    addLast: self userGlobals;
    yourself.
  newUser := (AllUsers
    addNewUserWithId: 'ErnieUser'
    password: 'swordfish'
    defaultObjectSecurityPolicy: nil
    privileges:
      #('CodeModification' 'UserPassword' 'OtherPassword' 'CompilePrimitives')
    inGroups: #('DataCuratorGroup'))
    symbolList: newSymbolList;
    yourself.
  System commit.
  ^ newUser