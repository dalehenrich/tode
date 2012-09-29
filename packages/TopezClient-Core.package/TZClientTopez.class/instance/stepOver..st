debugging
stepOver: aProcessContext
    ^ self doInSession: [ self session stepOverWith: aProcessContext ]