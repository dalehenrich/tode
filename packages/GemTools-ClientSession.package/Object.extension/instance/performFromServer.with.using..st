*gemtools-clientsession
performFromServer: aSelector with: argsOop using: aSession
    | sz args |
    sz := aSession receiverNB: argsOop perform: 'size' withArgs: #().
    args := Array new: sz.
    1 to: sz do: [ :i | args at: i put: (aSession receiverNB: argsOop perform: 'at:' withArgs: {i}) ].
    aSelector numArgs == 0
        ifTrue: [ self perform: aSelector ]
        ifFalse: [ self perform: aSelector withArguments: args ].
    self flag: 'hackety hack'.
    ^ nil