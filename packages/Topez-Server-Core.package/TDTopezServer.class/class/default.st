accessing
default
    | singleton |
    singleton := SessionTemps current at: #'TDTopezServer_Default' otherwise: nil.
    singleton == nil
        ifTrue: [ 
            singleton := self new.
            SessionTemps current at: #'TDTopezServer_Default' put: singleton ].
    ^ singleton