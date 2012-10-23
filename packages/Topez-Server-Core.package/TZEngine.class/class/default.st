accessing
default
    | singleton |
    singleton := SessionTemps current at: #'TZEngine_Default' otherwise: nil.
    singleton == nil
        ifTrue: [ 
            singleton := self new.
            SessionTemps current at: #'TZEngine_Default' put: singleton ].
    ^ singleton