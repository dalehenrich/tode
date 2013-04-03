*gemtools-clientsession
performFromServer: aSelector with: args using: aSession
  ^ aSelector numArgs == 0
    ifTrue: [ self perform: aSelector ]
    ifFalse: [ self perform: aSelector withArguments: args ]