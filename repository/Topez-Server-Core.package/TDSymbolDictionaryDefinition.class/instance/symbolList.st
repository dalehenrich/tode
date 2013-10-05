accessing
symbolList
  ^ (AllUsers
    userWithId: self username
    ifAbsent: [ self error: 'No user named' , self username printString , ' found.' ])
    symbolList