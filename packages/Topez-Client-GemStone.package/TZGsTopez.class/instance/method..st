coding
method: source
    | oSource |
    (self currentClass == nil or: [ self currentCategory == nil ])
        ifTrue: [ self error: 'currentClass and currentCategory must be set' ].
    oSource := self session newStringOopType: source.
    ^ self
        doInSession: [ :sess | 
            sess
                compileMethod: oSource
                class: self currentClass
                category: self currentCategory
                compileFlags: 0 ]