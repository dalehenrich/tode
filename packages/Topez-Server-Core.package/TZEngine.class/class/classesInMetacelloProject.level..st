metacello
classesInMetacelloProject: aMetacelloProjectSpec level: level
	^self 
		toString:  (((MetacelloProjectRegistration
			registrationForProjectSpec: aMetacelloProjectSpec
			ifAbsent: [ :new | #() ]
			ifPresent: [ :registration :new | registration currentlyLoadedClassesInProject ])
				collect: [ :class | class name asString ]) asArray sort) 
		level: level