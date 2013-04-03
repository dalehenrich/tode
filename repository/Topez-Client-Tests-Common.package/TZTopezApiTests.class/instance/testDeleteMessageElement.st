testing
testDeleteMessageElement
    | classProxy selector messageElement selectors x |
    self
        doNoError: [ 
            self topez
                run: self animalClassDefinition;
                run: self animalClassDefinition;
                setClass: 'Animal';
                setCategory: 'accessing';
                method: self animalHabitatMethod.
            self topez setClass: 'Animal'.
            classProxy := self topez currentClass.
            messageElement := self topez messageElementFor: classProxy selector: 'habitat' messagePattern: ''.
            self topez deleteMethodElement: messageElement.
            selectors := TZLister new listProxy: (self topez instanceSelectors: classProxy).
            self assert: (x := selectors renderText asString) = '' ]