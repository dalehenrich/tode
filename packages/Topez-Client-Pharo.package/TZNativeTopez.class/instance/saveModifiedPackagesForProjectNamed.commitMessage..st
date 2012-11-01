metacello
saveModifiedPackagesForProjectNamed: projectName commitMessage: commitMessage
    ^ self doInSession: [ :sess | sess saveModifiedPackagesForProjectNamed: projectName commitMessage: commitMessage ]