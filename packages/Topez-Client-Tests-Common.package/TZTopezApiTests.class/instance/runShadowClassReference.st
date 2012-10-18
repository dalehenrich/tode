tests
runShadowClassReference
    | classProxy |
    self runLoadAnimalClass.
    ^ self topez referencesTo: 'AnimalShadow' isMeta: false in: nil