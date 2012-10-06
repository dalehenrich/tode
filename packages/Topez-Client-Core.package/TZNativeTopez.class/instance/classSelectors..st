as yet unclassified
classSelectors: classProxy
    ^ self doInSession: [ :sess | sess classSelectors: classProxy ]