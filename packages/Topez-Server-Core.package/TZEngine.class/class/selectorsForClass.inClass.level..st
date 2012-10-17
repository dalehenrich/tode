metacello
selectorsForClass: aClass inClass: classBoolean level: level
    | targetClass result |
    targetClass := classBoolean
        ifTrue: [ aClass class ]
        ifFalse: [ aClass ].
    result := targetClass selectors sort
        collect: [ :selector | 
            TZMethodElement new
                elementClass: aClass;
                elementClassName: aClass name;
                selector: selector ;
                category: (aClass categoryOfSelector: selector asSymbol);
                isMeta: classBoolean;
                setSource;
                yourself ].
    ^ self toString: result level: level