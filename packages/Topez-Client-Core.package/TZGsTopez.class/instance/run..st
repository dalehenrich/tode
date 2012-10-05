api
run: aString
    "execute <aString> on the server and return results in terms of TZProxyObjects"

    | result |
    result := self executeCommand: (TZTopezRunCmd new doit: aString).
    ^ result
        topezClient: self;
        signalNotifications;
        yourself