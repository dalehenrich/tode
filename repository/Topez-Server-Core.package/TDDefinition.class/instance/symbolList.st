accessing
symbolList
  self username ifNil: [ ^ System myUserProfile symbolList ].
  ^ (AllUsers userWithId: self username ifAbsent: [ System myUserProfile ])
    symbolList