environment
defaultTodeEnvironment
  ^ self guestUser
    ifNil: [ TDStandardEnvironment new ]
    ifNotNil: [ :guest | 
      TDStandardUserEnvironment new
        userId: guest;
        yourself ]