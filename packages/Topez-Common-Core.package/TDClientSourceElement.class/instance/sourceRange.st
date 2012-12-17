as yet unclassified
sourceRange
    "store as Array instead of Interval, because of bug: https://github.com/svenvc/ston/issues/5"

    sourceRange
        ifNil: [ 
            sourceRange := {1.
            0} ].
    ^ (sourceRange at: 1) to: (sourceRange at: 2)