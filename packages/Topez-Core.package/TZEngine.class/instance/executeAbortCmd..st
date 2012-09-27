command execution
executeAbortCmd: aTZTopezAbortCmd
    ^ self class toString: System abortTransaction withOptions: aTZTopezAbortCmd options