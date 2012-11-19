accessing
close
    (windows select: [ :each | each notNil ])
        do: [ :window | 
            (window model isKindOf: TopezEditor)
                ifTrue: [ 
                    window model windowIsClosing.
                    window delete ] ]