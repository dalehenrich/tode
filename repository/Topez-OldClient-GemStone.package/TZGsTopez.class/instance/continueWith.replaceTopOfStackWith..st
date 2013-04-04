debugging
continueWith: aProcessContext replaceTopOfStackWith: replacementObj
    ^ self doInSession: [ :sess | sess continueWith: aProcessContext replaceTopOfStackWith: replacementObj ]