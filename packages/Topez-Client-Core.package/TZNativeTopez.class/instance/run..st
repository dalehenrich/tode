api
run: aString
    "execute <aString> on the server and return results in terms of TZProxyObjects"

    ^ self doInSession: [ :ignored | self class toString: (Compiler evaluate: aString) ]