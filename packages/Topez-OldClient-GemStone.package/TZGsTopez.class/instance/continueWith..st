debugging
continueWith: aProcessContext
    ^ self doInSession: [ :sess | sess continueWith: aProcessContext ]