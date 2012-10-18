styling
shoutAboutToStyle: aPluggableShoutMorphOrView
    ^ self sourceElement
        ifNotNil: [ 
            self activeShout
                ifTrue: [ aPluggableShoutMorphOrView classOrMetaClass: self sourceElement elementBehaviorForShout ]
                ifFalse: [ 
                    self sourceElement className asString = 'TZDoItElement'
                        ifTrue: [ aPluggableShoutMorphOrView classOrMetaClass: nil ]
                        ifFalse: [ aPluggableShoutMorphOrView classOrMetaClass: Object ] ].
            aPluggableShoutMorphOrView styler environment: self.
            self sourceElement className ~= 'TZTextElement' ]
        ifNil: [ self stylingActive ]