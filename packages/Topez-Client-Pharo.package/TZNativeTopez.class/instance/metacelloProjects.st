metacello
metacelloProjects
    ^ self doInSession: [ :sess | sess metacelloProjects ]