tests
runInstanceVarReference
    | classProxy |
    self runLoadAnimalClass.
    self topez setClass: 'Animal'.
    classProxy := self topez currentClass.
    ^ self topez referencesTo: 'habitat' isMeta: false in: classProxy