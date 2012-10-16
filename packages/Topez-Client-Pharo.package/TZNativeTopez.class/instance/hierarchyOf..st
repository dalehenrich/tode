coding
hierarchyOf: classProxy
    ^ self doInSession: [ :sess | sess hierarchyOf: classProxy ]