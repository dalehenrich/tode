coding
classSelectors: classProxy
    ^ self doInSession: [ :sess | sess classSelectors: classProxy ]