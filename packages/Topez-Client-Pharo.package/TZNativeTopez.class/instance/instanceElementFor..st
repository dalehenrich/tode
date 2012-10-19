coding
instanceElementFor: instanceProxy
    ^ self doInSession: [ :sess | sess instanceElementFor: instanceProxy ]