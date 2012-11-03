coding
diffModifiedPackagesForProjectNamed: projectName
    ^ self doInSession: [ :sess | sess diffModifiedPackagesForProjectNamed: projectName ]