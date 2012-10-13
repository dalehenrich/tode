as yet unclassified
testClassesInMetacelloProject: aMetacelloProjectSpec level: level
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
                ifTrue: [ | selectedClasses |
			selectedClasses := wc packageInfo classes select: [ :cl | cl inheritsFrom: TestCase ].                    			classes addAll: selectedClasses.
                  selectedClasses := wc packageInfo extensionClasses select: [ :cl | cl inheritsFrom: TestCase ].
			selectedClasses do: [ :cl | 
				extensionClasses at: cl put: (wc packageInfo extensionCategoriesForClass: cl) ] ] ]
        groupDo: [ :ignored |  ].
 	^self 
		toString:  (TZClassElement hierarchyForClasses: classes extensionClasses: extensionClasses) 
		level: level