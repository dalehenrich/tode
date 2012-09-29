debugging
continueWith: aProcessContext replaceTopOfStackWith: replacementObj
    ^ self doInSession: [ self session continueWith: aProcessContext replaceTopOfStackWith: replacementObj ]