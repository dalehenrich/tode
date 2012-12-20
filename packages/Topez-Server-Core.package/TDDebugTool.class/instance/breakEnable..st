as yet unclassified
breakEnable: breakTokens
    "enable [list-item]"

    breakTokens size = 1
        ifTrue: [ 
            "enable all breakpoints"
            ^ GsNMethod _enableAllBreaks ].
    GsNMethod _enableBreakNumber: (breakTokens at: 2) asNumber