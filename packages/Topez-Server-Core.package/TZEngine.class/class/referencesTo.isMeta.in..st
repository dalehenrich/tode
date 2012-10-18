as yet unclassified
referencesTo: aVariableOrClassName isMeta: isMeta in: aClassProxyOrNil
    | aCollection env ref symbol  special byte literal |
    aCollection := OrderedCollection new.
    env := aClassProxyOrNil ifNil: [ Smalltalk globals ].
    env isBehavior
        ifTrue: [ "instance vars and class instance vars"
            isMeta
                ifTrue: [ env := env class ].
            (env allInstVarNames includes: aVariableOrClassName asSymbol)
                ifTrue: [ 
                    env
                        withAllSubAndSuperclassesDo: [ :cl | 
                            (cl whichSelectorsAccess: aVariableOrClassName)
                                do: [ :sel | aCollection add: (self messageElementFor: cl selector: sel messagePattern: aVariableOrClassName) ] ].
                    ^ TZMessageElement hierarchyOrderFor: aCollection ].
		literal := (env withAllSuperclasses 
				gather: [:ea | ea classPool associations])
					detect: [:ea | ea key = aVariableOrClassName asSymbol] ifNone: [].
		literal 
			ifNotNil:  [ | classes |
				"class vars not quite correct ...."
				classes := ClassSet new.
				classes add: env theNonMetaclass.
				aCollection addAll: ((ClassOrganizer cachedOrganizer referencesTo: literal key in: classes) 
					collect: [:method | 
						self 
							messageElementFor: method inClass 
							selector: method selector 
							messagePattern: aVariableOrClassName]).
				^TZMessageElement hierarchyOrderFor: aCollection]].
		
	aCollection addAll: ((SystemNavigation default allReferencesTo: aVariableOrClassName asSymbol) 
		collect: [:methodRef | 
			self 
				messageElementFor: methodRef actualClass 
				selector: methodRef selector 
				messagePattern: aVariableOrClassName]).
    ^TZMessageElement hierarchyOrderFor: aCollection
