coding
methodElementFor: behaviorProxy selector: selector
    ^ self doInSession: [ :sess | sess methodElementFor: behaviorProxy selector: selector ]