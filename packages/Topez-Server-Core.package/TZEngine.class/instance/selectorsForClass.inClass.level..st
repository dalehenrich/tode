metacello
selectorsForClass: aClass inClass: classBoolean level: level
    | targetClass result |
    targetClass := classBoolean
        ifTrue: [ aClass class ]
        ifFalse: [ aClass ].
    result := targetClass selectors sort
        collect: [ :selector | self methodElementForClass: aClass isMeta: classBoolean selector: selector ].
    ^ self toString: result level: level