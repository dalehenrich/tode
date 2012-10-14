test coding
testCreatingAndChangingMethods
    | x |
    self pushPrintBlocks.
    self
        do: [ :tpz | 
            tpz
                run: self animalClassDefinition;
                setClass: 'Animal';
                setCategory: 'accessing';
                method: self animalHabitatMethod;
                method: self animalHabitatUpdateMethod;
                setCategory: 'example';
                classMethod: self animalClassReturnAsStringMethod ].
    self
        run: 'Animal new'
        validate: [ :result | 
            self
                assert:
                    (x := result printString)
                        =
                            '[Animal] anAnimal
 favoriteFood			[UndefinedObject] nil
 habitat			[UndefinedObject] nil
 name			[UndefinedObject] nil' ].
    self
        run: 'Animal new habitat: 1'
        validate: [ :result | 
            self
                assert:
                    (x := result printString)
                        =
                            '[Animal] anAnimal
 favoriteFood			[UndefinedObject] nil
 habitat			[SmallInteger] 1
 name			[UndefinedObject] nil' ].
    self
        run: 'Animal new habitat'
        validate: [ :result | self assert: (x := result printString) = '[UndefinedObject] nil' ].
    self run: 'Animal returnAsString' validate: [ :result | self assert: (x := result printString) = '[String] ' ]