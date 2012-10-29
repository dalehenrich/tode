metacello
classNamesInMetacelloProject: aProjectName
    ^ self doInSession: [ :sess | sess classNamesInMetacelloProject: aProjectName ]