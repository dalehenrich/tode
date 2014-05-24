accessing
symbolList
  self username ifNil: [ ^ GsSession currentSession symbolList ].
  ^ (AllUsers userWithId: self username ifAbsent: [ System myUserProfile ])
    symbolList