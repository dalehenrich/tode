test coding
testCreatingAndChangingMethods
    | x |
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
            result displayOptions: (TZTopezOptions new displayOops: false).
            self
                assert:
                    (x := result printString)
                        =
                            'anAnimal
 favoriteFood			nil
 habitat			nil
 name			nil
' ].
    self
        run: 'Animal new habitat: 1'
        validate: [ :result | 
            result displayOptions: (TZTopezOptions new displayOops: false).
            self
                assert:
                    (x := result printString)
                        =
                            'anAnimal
 favoriteFood			nil
 habitat			1
 name			nil
' ].
    self
        run: 'Animal new habitat'
        validate: [ :result | 
            result displayOptions: (TZTopezOptions new displayOops: false).
            self
                assert:
                    (x := result printString)
                        =
                            'nil
' ].
    self
        run: 'Animal returnAsString'
        validate: [ :result | 
            result displayOptions: (TZTopezOptions new displayOops: false).
            self
                assert:
                    (x := result printString)
                        =
                            '''''
' ]