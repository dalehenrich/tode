metacello
classesInMetacelloProject
    ^ MetacelloProjectRegistration
        registrationForProjectSpec: 'aProjectSpec'
        ifAbsent: [ #() ]
        ifPresent: [ :registration | registration currentlyLoadedClassesInProject ]