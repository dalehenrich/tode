coding
superclassesOf: classProxy
    ^ self doInSession: [ :sess | sess superclassesOf: classProxy ]