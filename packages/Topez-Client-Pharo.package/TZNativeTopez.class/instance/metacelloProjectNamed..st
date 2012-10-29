metacello
metacelloProjectNamed: aProjectName
    ^ self doInSession: [ :sess | sess metacelloProjectNamed: aProjectName ]