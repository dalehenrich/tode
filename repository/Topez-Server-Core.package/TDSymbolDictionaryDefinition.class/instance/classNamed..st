accessing
classNamed: aClassName
  ^ self symbolDictionary
    at: aClassName
    ifAbsent: [ 
      ^ (AllUsers
        userWithId: self username
        ifAbsent: [ self error: 'No user named' , self username printString , ' found.' ])
        objectNamed: aClassName ]