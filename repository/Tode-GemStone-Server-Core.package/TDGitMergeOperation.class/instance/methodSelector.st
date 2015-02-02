smalltalk source
methodSelector
  | methodSource methodNode src |
  self hasFileTreeSmalltalkSource
    ifFalse: [ ^ nil ].
  src := ancestor notNil
    ifTrue: [ ancestor ]
    ifFalse: [ 
      us notNil
        ifTrue: [ us ]
        ifFalse: [ 
          them notNil
            ifTrue: [ them ]
            ifFalse: [ self error: 'no method ... no selector' ] ] ].
  methodSource := (self stSource: src) at: 2.
  methodNode := RBParser
    parseMethod: methodSource
    onError: [ :err :pos | ^ nil ].
  ^ methodNode selector