as yet unclassified
referencesTo: aVariableOrClassName isMeta: isMeta in: aClassProxyOrNil
    | aCollection env ref special byte symbol |
    aCollection := OrderedCollection new.
    env := aClassProxyOrNil ifNil: [ Smalltalk globals ].
    env isBehavior
        ifTrue: [ 
            isMeta
                ifTrue: [ env := env class ].
            (env instVarIndexFor: aVariableOrClassName) > 0
                ifTrue: [ 
                    env
                        withAllSubAndSuperclassesDo: [ :cl | 
                            (cl whichSelectorsAccess: aVariableOrClassName)
                                do: [ :sel | aCollection add: (self messageElementFor: cl selector: sel messagePattern: aVariableOrClassName) ] ].
                    ^ TZMessageElement hierarchyOrderFor: aCollection ] ].
    ref := (env bindingOf: aVariableOrClassName) ifNil: [ ^ aCollection ].
    special := Smalltalk hasSpecialSelector: ref ifTrueSetByte: [ :value | byte := value ].
    symbol := ref isSymbol.
    SystemNavigation default
        allBehaviorsDo: [ :cl | 
            | selectors |
            selectors := symbol
                ifFalse: [ cl whichSelectorsReferTo: ref special: special byte: byte ]
                ifTrue: [ cl thoroughWhichSelectorsReferTo: ref special: special byte: byte ].
            selectors
                do: [ :sel | aCollection add: (self messageElementFor: cl selector: sel messagePattern: aVariableOrClassName) ] ].
    ^ TZMessageElement hierarchyOrderFor: aCollection