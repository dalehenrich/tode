accessing
collapse
    (windows select: [ :each | each notNil ])
        do: [ :window | 
            (window model isKindOf: TopezEditor)
                ifTrue: [ window collapse ] ]