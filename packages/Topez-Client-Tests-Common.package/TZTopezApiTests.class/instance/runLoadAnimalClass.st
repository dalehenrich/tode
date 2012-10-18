tests
runLoadAnimalClass
    | classProxy |
    self pushPrintBlocks.
    self
        do: [ :tpz | 
            tpz
                run: self animalClassDefinition;
                run: self animalClassClassDefinition;
                setClass: 'Animal';
                setCategory: 'accessing';
                method: self animalHabitatMethod;
                method: self animalHabitatUpdateMethod;
                setCategory: 'example';
                classMethod: self animalClassReturnAsStringMethod;
                classMethod: self animalClassReferenceClassVarMethod ]