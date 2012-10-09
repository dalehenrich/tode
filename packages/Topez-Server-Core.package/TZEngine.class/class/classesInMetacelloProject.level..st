metacello
classesInMetacelloProject: aMetacelloProjectSpec level: level
    | version classes extensionClasses dict |
    classes := Set new.
    extensionClasses := Dictionary new.
    version := aMetacelloProjectSpec versionOrNil ifNil: [ ^ #() ].
    version spec
        projectDo: [ :ignored |  ]
        packageDo: [ :packageSpec | 
            | wc |
            wc := [ packageSpec workingCopy ]
                on: Error
                do: [ :ex | ex return: nil ].
            wc ~~ nil
                ifTrue: [ 
                    classes addAll: wc packageInfo classes.
                    wc packageInfo extensionClasses
                        do: [ :cl | extensionClasses at: cl put: (wc packageInfo extensionCategoriesForClass: cl) ] ] ]
        groupDo: [ :ignored |  ].
 	^self 
		toString:  (TZClassHierarchyElement hierarchyForClasses: classes extensionClasses: extensionClasses) 
		level: level