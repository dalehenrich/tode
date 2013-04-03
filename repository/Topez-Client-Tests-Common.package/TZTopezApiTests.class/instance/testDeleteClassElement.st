testing
testDeleteClassElement
    | classProxy classElement |
    self
        doNoError: [ 
            self topez run: self animalClassDefinition.
            self topez setClass: 'Animal'.
            classProxy := self topez currentClass.
            classElement := self topez classElementForClass: classProxy.
            self topez deleteClassElement: classElement.
            self should: [ self topez setClass: 'Animal' ] raise: Error ]