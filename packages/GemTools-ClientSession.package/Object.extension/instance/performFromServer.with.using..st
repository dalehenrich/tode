*gemtools-clientsession
performFromServer: aSelector with: args using: aSession
  Transcript
    cr;
    show: 'Object>>performFromServer:with:using: ' , aSelector printString.
  ^ aSelector numArgs == 0
    ifTrue: [ self perform: aSelector ]
    ifFalse: [ self perform: aSelector withArguments: args ]