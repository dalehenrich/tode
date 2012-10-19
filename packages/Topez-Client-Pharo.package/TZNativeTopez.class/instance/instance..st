api
instance: aString
    "execute <aString> on the server and return results in terms of TZProxyObjects"

    | result |
    result := self run: aString.
    self setInstance: result.
    ^ result