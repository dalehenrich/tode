testing
testAddElementToClassElement
    | classProxy methodElement classElement selectors x |
    self topez run: self animalClassDefinition.
    self topez setClass: 'Object'.
    classProxy := self topez currentClass.
    methodElement := self topez messageElementFor: classProxy selector: 'asTopezProxy' messagePattern: 'asTopezProxy'.
    self topez setClass: 'Animal'.
    classProxy := self topez currentClass.
    classElement := self topez classElementForClass: classProxy.
    self topez addElement: methodElement toClassElement: classElement.
    selectors := TZLister new listProxy: (self topez instanceSelectors: classProxy).
    self assert: (x := selectors renderText asString) = 'asTopezProxy'