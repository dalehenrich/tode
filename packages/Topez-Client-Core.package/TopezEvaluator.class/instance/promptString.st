stash
promptString
    promptString
        ifNil: [ promptString := (Text string: 'topez >' attribute: TextColor gray) , (Text string: ' ' attribute: TextEmphasis normal) ].
    ^ promptString