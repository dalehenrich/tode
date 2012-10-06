as yet unclassified
instanceSelectors: classProxy
    ^ self doInSession: [ :sess | sess instanceSelectors: classProxy ]