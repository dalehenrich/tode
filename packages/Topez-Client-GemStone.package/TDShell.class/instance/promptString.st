stash
promptString
  promptString
    ifNil: [ 
      promptString := (Text string: 'tode ' , self shellId asString , ' >' attribute: TextColor gray)
        , (Text string: ' ' attribute: TextEmphasis normal) ].
  ^ promptString