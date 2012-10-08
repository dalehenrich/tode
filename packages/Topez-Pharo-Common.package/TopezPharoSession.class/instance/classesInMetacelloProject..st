api
classesInMetacelloProject: projectProxy
    ^ ((MetacelloProjectRegistration
        registrationForProjectSpec: projectProxy native
        ifAbsent: [ :new | #() ]
        ifPresent: [ :registration :new | registration currentlyLoadedClassesInProject ])
        collect: [ :class | class name asString ]) asArray sort