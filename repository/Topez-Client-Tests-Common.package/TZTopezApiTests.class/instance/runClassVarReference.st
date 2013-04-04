tests
runClassVarReference
    | classProxy |
    self
        doNoError: [ 
            self runLoadAnimalClass.
            self topez setClass: 'Animal'.
            classProxy := self topez currentClass.
            ^ self topez referencesTo: 'AnimalClassVar' isMeta: false in: classProxy ]