as yet unclassified
break
    "
    db break @<step-point> <class>[ class]>><selector> 
    db break clear [@<step-point> <class>[ class]>><selector>] 
    db break enable <list-item>
    db break disable <list_item> 
"

    | breakTokens command |
    breakTokens := tokens copyFrom: 2 to: tokens size.
    command := breakTokens at: 1.
    Transcript
        cr;
        show: command.
    (command beginsWith: '@')
        ifTrue: [ ^ self breakSet: breakTokens ].
    command = 'clear'
        ifTrue: [ ^ self breakClear: breakTokens ].
    command = 'enable'
        ifTrue: [ ^ self breakEnable: breakTokens ].
    command = 'disable'
        ifTrue: [ ^ self breakDisable: breakTokens ]