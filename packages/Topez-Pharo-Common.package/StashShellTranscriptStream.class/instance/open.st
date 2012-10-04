initialization
open
    | openCount |
    openCount := 0.
    self dependents
        do: [ :d | 
            d isSystemWindow
                ifTrue: [ openCount := openCount + 1 ] ].
    ^ openCount = 0
        ifTrue: [ self openLabel: self label ]
        ifFalse: [ self openLabel: self label , ' #' , (openCount + 1) printString ]