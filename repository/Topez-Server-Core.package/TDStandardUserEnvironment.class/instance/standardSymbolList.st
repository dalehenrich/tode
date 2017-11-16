private
standardSymbolList
  userId ifNil: [ ^ super standardSymbolList ].
  ^ (AllUsers
    userWithId: self userId
    ifAbsent: [ self error: 'User ' , self userId printString , ' not found' ])
    symbolList