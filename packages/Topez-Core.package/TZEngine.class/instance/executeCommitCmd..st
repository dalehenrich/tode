command execution
executeCommitCmd: aTZTopezCommitCmd
    ^ self class toString: System commitTransaction withOptions: aTZTopezCommitCmd options