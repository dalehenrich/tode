accessing
default
    | singleton |
    singleton := SessionTemps current at: #'TZTool_Default' otherwise: nil.
    singleton == nil
        ifTrue: [ 
            singleton := self new.
            SessionTemps current at: #'TZTool_Default' put: singleton ].
    ^ singleton