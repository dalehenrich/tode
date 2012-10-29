metacello
classesInMetacelloProject: aProjectProxy
    ^ self doInSession: [ :sess | sess classesInMetacelloProject: aProjectProxy ]