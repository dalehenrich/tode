coding
subclassesOf: classProxy
    ^ self doInSession: [ :sess | sess subclassesOf: classProxy ]