metacello
classesInMetacelloProject
    ^ self doInSession: [ :sess | sess classesInMetacelloProject: self currentProject ]