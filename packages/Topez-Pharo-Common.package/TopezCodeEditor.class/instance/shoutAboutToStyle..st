styling
shoutAboutToStyle: aPluggableShoutMorphOrView
    ^ self sourceElement
        ifNotNil: [ 
            aPluggableShoutMorphOrView classOrMetaClass: self sourceElement proxyBehaviorForShout.
            aPluggableShoutMorphOrView styler environment: self.
            self sourceElement className ~= 'TZTextElement' ]
        ifNil: [ self stylingActive ]