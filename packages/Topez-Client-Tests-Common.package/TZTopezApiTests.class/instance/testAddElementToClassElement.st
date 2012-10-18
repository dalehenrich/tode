testing
testAddElementToClassElement
    | classProxy methodElement classElement selectors x |
    self
        doNoError: [ 
            self topez
                run: self animalClassDefinition;
                run: self animalShadowRefClassDefinition;
                setClass: 'AnimalShadowRef';
                setCategory: 'accessing';
                classMethod: self animalClassReturnAsStringMethod;
                method: self animalClassReturnAsStringMethod.
            classProxy := self topez currentClass.
            methodElement := self topez messageElementFor: classProxy selector: 'returnAsString' messagePattern: ''.
            self topez setClass: 'Animal'.
            classProxy := self topez currentClass.
            classElement := self topez classElementForClass: classProxy.
            self topez addElement: methodElement toClassElement: classElement.
            selectors := TZLister new listProxy: (self topez instanceSelectors: classProxy).
            self assert: (x := selectors renderText asString) = 'returnAsString' ]