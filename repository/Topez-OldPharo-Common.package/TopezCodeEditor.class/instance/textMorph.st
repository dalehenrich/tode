accessing
textMorph
    dependents ifNil: [ ^ nil ].
    dependents
        do: [ :v | 
            v isMorph
                ifTrue: [ ^ v ] ].
    ^ nil