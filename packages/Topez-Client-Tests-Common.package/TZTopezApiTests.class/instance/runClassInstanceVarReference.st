tests
runClassInstanceVarReference
    | classProxy |
    self runLoadAnimalClass.
    self topez setClass: 'Animal'.
    classProxy := self topez currentClass.
    ^ self topez referencesTo: 'animalClassInstanceVariable' isMeta: true in: classProxy