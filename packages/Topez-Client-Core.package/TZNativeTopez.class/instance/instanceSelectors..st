coding
instanceSelectors: classProxy
    ^ self doInSession: [ :sess | sess instanceSelectors: classProxy ]