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
    self run: 'Animal new' validate: [ :result | self assert: (x := result printString) = '{ sz:3 Animal} an Animal' ].
    self
        run: 'Animal new habitat: 1'
        validate: [ :result | self assert: (x := result printString) = '{ sz:3 Animal} an Animal' ].
    self
        run: 'Animal new habitat'
        validate: [ :result | self assert: (x := result printString) = '{ sz:0 UndefinedObject} nil' ].
    self
        run: 'Animal returnAsString'
        validate: [ :result | self assert: (x := result printString) = '{ sz:0 ByteString} ' ]