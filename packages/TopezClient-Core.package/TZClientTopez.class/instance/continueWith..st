debugging
continueWith: aProcessContext
    ^ self doInSession: [ self session continueWith: aProcessContext ]