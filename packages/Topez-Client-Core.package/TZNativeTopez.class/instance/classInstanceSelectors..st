coding
classInstanceSelectors: classProxy
    ^ self rawInSession: [ :sess | sess classInstanceSelectors: classProxy ]