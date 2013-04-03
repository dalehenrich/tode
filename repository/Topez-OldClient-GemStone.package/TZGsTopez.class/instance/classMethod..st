coding
classMethod: source
    (self currentClass == nil or: [ self currentCategory == nil ])
        ifTrue: [ self error: 'currentClass and currentCategory must be set' ].
    ^ self
        compileMethod: source
        class: self currentClass
        category: self currentCategory
        forMeta: true