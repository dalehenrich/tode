private
executeStringInSession: aString
    "answer an instance of TZTopezProxy"

    [ 
    | result |
    result := self session executeStringNB: aString.
    ^ STON fromString: result ]
        on: GsRuntimeError
        do: [ :ex | ^ ex tag asTopezProxy ]