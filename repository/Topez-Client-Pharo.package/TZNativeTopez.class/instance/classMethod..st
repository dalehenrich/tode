coding
classMethod: source
    (self currentClass == nil or: [ self currentCategory == nil ])
        ifTrue: [ self error: 'currentClass and currentCategory must be set' ].
    ^ self
        doInSession: [ :sess | 
            sess
                compileMethod: source
                class: self currentClass
                isMeta: true
                category: self currentCategory ]