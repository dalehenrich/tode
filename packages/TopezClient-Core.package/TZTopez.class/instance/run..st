api
run: aString
    "execute <aString> on the server and return results in terms of TZProxyObjects"

    | cmdSton |
    cmdSton := STON toString: (TZTopezRunCmd new doit: aString).
    ^ STON fromString: (self session executeStringNB: 'TZEngine executeCommandFrom: ' , cmdSton printString)