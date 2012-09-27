api
run: aString
    | cmdSton |
    cmdSton := STON toString: (TZTopezRunCmd new doit: aString).
    ^ STON fromString: (self session executeStringNB: 'TZEngine executeCommandFrom: ' , cmdSton)