coding
instanceElementFor: instanceProxy level: level
    ^ self doInSession: [ :sess | sess instanceElementFor: instanceProxy level: level ]