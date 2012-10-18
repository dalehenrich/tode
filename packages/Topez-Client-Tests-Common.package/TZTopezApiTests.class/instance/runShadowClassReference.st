tests
runShadowClassReference
    | classProxy |
    self
        doNoError: [ 
            self runLoadAnimalClass.
            ^ self topez referencesTo: 'AnimalShadow' isMeta: false in: nil ]