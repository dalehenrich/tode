api
abort
    | cmdSton |
    cmdSton := STON toString: TZTopezAbortCmd new.
    ^ STON fromString: (self session executeStringNB: 'TZEngine executeCommandFrom: ' , cmdSton printString)