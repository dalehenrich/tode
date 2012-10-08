debugging
stepInto: aProcessContext
    ^ self doInSession: [ :sess | sess stepIntoWith: aProcessContext ]