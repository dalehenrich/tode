debugging
stepWith: aProcessContext level: level
    ^ self doInSession: [ :sess | sess stepWith: aProcessContext level: level ]