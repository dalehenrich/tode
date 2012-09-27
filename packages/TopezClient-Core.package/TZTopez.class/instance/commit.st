api
commit
    | cmdSton |
    cmdSton := STON toString: TZTopezCommitCmd new.
    ^ STON fromString: (self session executeStringNB: 'TZEngine executeCommandFrom: ' , cmdSton printString)