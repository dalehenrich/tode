as yet unclassified
break
    "
    db break @<step-point> <class>[ class]>><selector> 
    db break clear [@<step-point> <class>[ class]>><selector>] 
    db break enable <list-item>
    db break disable <list_item> 
"

    | breakTokens |
    breakTokens := tokens copyFrom: 3 to: tokens size.
    (breakTokens at: 1) beginsWith: '@' ifTrue: [ ^ self breakSet: breakTokens ].
    (breakTokens at: 1) = 'clear'
        ifTrue: [ ^ self breakClear: breakTokens ].
    (breakTokens at: 1) = 'enable'
        ifTrue: [ ^ self breakEnable: breakTokens ].
    (breakTokens at: 1) = 'disable'
        ifTrue: [ ^ self breakDisable: breakTokens ]