execution
run: aString
    "execute <aString> on the server and return results in terms of TZProxyObjects"

    ^ self executeCommand: (TZTopezRunCmd new doit: aString)