metacello
classesInMetacelloProject
    ^ self
        doInSession: [ :sess | 
            MetacelloProjectRegistration
                registrationForProjectSpec: self currentProject native
                ifAbsent: [ :new | #() ]
                ifPresent: [ :registration :new | registration currentlyLoadedClassesInProject ] ]