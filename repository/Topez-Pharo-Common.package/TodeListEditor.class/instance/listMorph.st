accessing
listMorph
    dependents ifNil: [ ^ nil ].
    dependents
        do: [ :v | 
            v isMorph
                ifTrue: [ ^ v ] ].
    ^ nil