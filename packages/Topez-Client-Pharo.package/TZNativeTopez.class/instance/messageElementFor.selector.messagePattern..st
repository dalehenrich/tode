coding
messageElementFor: behaviorProxy selector: selector messagePattern: aString
    ^ self doInSession: [ :sess | sess messageElementFor: behaviorProxy selector: selector messagePattern: aString ]