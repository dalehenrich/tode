metacello
compileMethod: source class: aClass category: category forMeta: forMeta level: level
    | targetClass selector |
    targetClass := forMeta
        ifTrue: [ aClass class ]
        ifFalse: [ aClass ].
    selector := targetClass compile: source classified: category.
    ^ self
        methodElementForClass: aClass
        isMeta: forMeta
        selector: selector
        level: level