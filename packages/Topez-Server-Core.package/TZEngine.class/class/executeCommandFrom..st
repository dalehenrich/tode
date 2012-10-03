execution
executeCommandFrom: aStonString
    ^ (STON fromString: aStonString) executeAgainst: self new