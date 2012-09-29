debugging
stepInto: aProcessContext
    ^ self doInSession: [ self session stepIntoWith: aProcessContext ]