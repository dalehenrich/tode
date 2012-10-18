tests
runShadowClassVarReference
    | classProxy |
    self
        doNoError: [ 
            self runLoadAnimalClass.
            self topez setClass: 'Animal'.
            classProxy := self topez currentClass.
            ^ self topez referencesTo: 'AnimalShadow' isMeta: false in: classProxy ]