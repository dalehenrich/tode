tests
runLoadAnimalClass
    | classProxy |
    self pushPrintBlocks.
    self
        do: [ :tpz | 
            tpz
                run: self animalClassDefinition;
                run: self animalClassClassDefinition;
                run: self animalShadowClassDefinition;
                run: self animalShadowRefClassDefinition;
                setClass: 'Animal';
                setCategory: 'accessing';
                method: self animalAHabitatMethod;
                method: self animalHabitatMethod;
                method: self animalHabitatUpdateMethod;
                method: self animalShadowMethod;
                method: self animalZHabitatMethod;
                setCategory: 'example';
                classMethod: self animalClassReturnAsStringMethod;
                classMethod: self animalClassReferenceClassVarMethod;
                classMethod: self animalShadowMethod;
                setClass: 'AnimalShadowRef';
                setCategory: 'accessing';
                method: self animalShadowMethod;
                setCategory: 'accessing';
                classMethod: self animalShadowMethod;
                yourself ]