as yet unclassified
referencesTo: aVariableOrClassName isMeta: isMeta in: aClassProxyOrNil
    | aCollection env ref symbol special byte literal |
    aCollection := OrderedCollection new.
    env := aClassProxyOrNil ifNil: [ Smalltalk globals ].
    env isBehavior
        ifTrue: [ 
            "instance vars and class instance vars"
            isMeta
                ifTrue: [ env := env class ].
            (env allInstVarNames includes: aVariableOrClassName asSymbol)
                ifTrue: [ 
                    env
                        withAllSubAndSuperclassesDo: [ :cl | 
                            (cl whichSelectorsAccess: aVariableOrClassName)
                                do: [ :sel | aCollection add: (self messageElementFor: cl selector: sel messagePattern: aVariableOrClassName) ] ].
                    ^ TZMessageElement hierarchyOrderFor: aCollection ].
            literal := (env withAllSuperclasses gather: [ :ea | ea classPool associations ])
                detect: [ :ea | ea key = aVariableOrClassName asSymbol ]
                ifNone: [  ].
            literal
                ifNotNil: [ 
                    | classes |
                    "class vars."
                    classes := ClassSet new.
                    classes addAll: env theNonMetaClass withAllSuperclasses.
                    ((ClassOrganizer cachedOrganizer referencesTo: literal key in: classes) at: 1)
                        do: [ :method | aCollection add: (self messageElementFor: method inClass selector: method selector messagePattern: aVariableOrClassName) ].
                    ^ TZMessageElement hierarchyOrderFor: aCollection ] ].	"globals"
    ((ClassOrganizer cachedOrganizer referencesTo: aVariableOrClassName asSymbol) at: 1)
        do: [ :method | aCollection add: (self messageElementFor: method inClass selector: method selector messagePattern: aVariableOrClassName) ].
    ^ TZMessageElement hierarchyOrderFor: aCollection