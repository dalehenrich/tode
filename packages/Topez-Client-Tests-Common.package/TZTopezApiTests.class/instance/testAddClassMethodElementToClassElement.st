testing
testAddClassMethodElementToClassElement
    | classProxy methodElement classElement selectors x classSelectors |
    self
        doNoError: [ 
            self topez run: self animalClassDefinition.
            self topez setClass: 'TZProxyObject'.
            classProxy := self topez currentClass.
            classSelectors := self topez classSelectors: classProxy.
            methodElement := classSelectors detect: [ :each | each selector asTopezNative asString = 'initialize' ].
            self topez setClass: 'Animal'.
            classProxy := self topez currentClass.
            classElement := self topez classElementForClass: classProxy.
            self topez addMethodElement: methodElement toClassElement: classElement.
            selectors := TZLister new listProxy: (self topez classSelectors: classProxy).
            self assert: (x := selectors renderText asString) = 'initialize' ]