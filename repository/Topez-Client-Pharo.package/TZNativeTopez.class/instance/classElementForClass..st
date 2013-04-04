coding
classElementForClass:  classProxy
    ^ self doInSession: [ :sess | sess classElementForClass: classProxy ]