api
run: aString
    "execute <aString> on the server and return results in terms of TZProxyObjects"

    | result |
    result := self executeString: aString.
    ^ result
        topez: self;
        signalNotifications;
        yourself