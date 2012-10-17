testing
testDeleteMethodElement
    | classProxy selector methodElement selectors x |
    self topez
        run: self animalClassDefinition;
        run: self animalClassDefinition;
        setClass: 'Animal';
        setCategory: 'accessing';
        method: self animalHabitatMethod.
    self topez setClass: 'Animal'.
    classProxy := self topez currentClass.
    methodElement := self topez methodElementFor: classProxy selector: 'habitat'.
    self topez deleteMethodElement: methodElement.
    selectors := TZLister new listProxy: (self topez instanceSelectors: classProxy).
    self assert: (x := selectors renderText asString) = ''