api
run: aString
    "execute <aString> on the server and return results in terms of TZProxyObjects"

    | result |
    result := self doInSession: [ :ignored | self session evaluate: aString ].
    ^ result
        topezClient: self;
        signalNotifications;
        yourself