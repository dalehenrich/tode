styling
shoutAboutToStyle: aPluggableShoutMorphOrView
    self edittingCode
        ifFalse: [ 
            self stylingActive
                ifTrue: [ 
                    aPluggableShoutMorphOrView classOrMetaClass: nil.
                    ^ true ].
            ^ false ].
    self sourceElement className asString = 'TZProxyGemStone'
        ifTrue: [ 
            (#('TZExecutedCodeElement' 'TZTextElement') includes: self sourceElement proxyClassName)
                ifTrue: [ 
                    aPluggableShoutMorphOrView classOrMetaClass: nil.
                    ^ true ] ].
    ^ self sourceElement
        ifNotNil: [ 
            self activeShout
                ifTrue: [ aPluggableShoutMorphOrView classOrMetaClass: self sourceElement elementBehaviorForShout ]
                ifFalse: [ 
                    self sourceElement className asString = 'TZDoItElement'
                        ifTrue: [ aPluggableShoutMorphOrView classOrMetaClass: nil ]
                        ifFalse: [ aPluggableShoutMorphOrView classOrMetaClass: Object ] ].
            true ]
        ifNil: [ self stylingActive ]