stash
promptString
  promptString
    ifNil: [ 
      self autoCommit
        ifTrue: [ 
          promptString := (Text
            string: 'tode ' , self shellId asString , ' >'
            attribute: TextColor gray)
            , (Text string: ' ' attribute: TextEmphasis normal) ]
        ifFalse: [ 
          promptString := (Text
            string: 'tode ' , self shellId asString , ' >'
            attribute: TextColor red)
            , (Text string: ' ' attribute: TextEmphasis normal) ] ].
  ^ promptString