debugging
stepOver: aProcessContext
    ^ self doInSession: [ :sess | sess stepOverWith: aProcessContext ]