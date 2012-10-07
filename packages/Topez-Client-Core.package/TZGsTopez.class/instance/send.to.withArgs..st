api
send: selector to: receiverProxy withArgs: arguments
    | resultOop |
    resultOop := self
        rawInSession: [ :sess | sess receiverNB: receiverProxy performNoDebug: selector withArgs: arguments ].
    ^ self proxyForOop: resultOop level: self commandOptions level