private
parseLongOptions: optionSpecs shortOptions: shortOptionAliases do: optionBlock nonOptionsDo: nonOptionBlock
  | peek opt spec |
  peek := stream peek.
  peek == $-
    ifFalse: [ 
      "no options"
      ^ self ].
  stream next.
  stream atEnd
    ifTrue: [ 
      nonOptionBlock value: peek asString.
      ^ self ].
  peek := stream peek.
  peek == $-
    ifFalse: [ 
      | alias |
      "no second dash ... old-style option or???"
      shortOptionAliases isEmpty
        ifTrue: [ self error: 'Unexpected short option: ' , peek asString ].
      opt := stream next.
      alias := shortOptionAliases
        at: peek
        ifAbsent: [ ^ self error: 'Unknown option: ' , opt asString ].
      spec := optionSpecs
        at: alias
        ifAbsent: [ ^ self error: 'Unknown option: ' , alias ].
      spec == #'none'
        ifTrue: [ 
          optionBlock value: alias value: nil.
          stream atEnd
            ifTrue: [ ^ self ].
          self skipWhiteSpace.
          ^ self
            parseLongOptions: optionSpecs
            shortOptions: shortOptionAliases
            do: optionBlock
            nonOptionsDo: nonOptionBlock ]
        ifFalse: [ 
          | optArg |
          optArg := self parseOptionArg: spec == #'required' for: opt.
          optionBlock value: alias value: optArg.
          stream atEnd
            ifTrue: [ ^ self ].
          ^ self
            parseLongOptions: optionSpecs
            shortOptions: shortOptionAliases
            do: optionBlock
            nonOptionsDo: nonOptionBlock ] ].
  stream next.
  stream atEnd
    ifTrue: [ 
      "hit naked, terminal -- done with options"
      ^ self ].
  peek := stream peek.
  peek isSeparator
    ifTrue: [ 
      "hit naked -- done with options"
      stream next.
      self skipWhiteSpace.
      ^ self ].
  opt := self parseLongOptionName.
  spec := optionSpecs
    at: opt
    ifAbsent: [ ^ self error: 'Unknown option: ' , opt asString ].
  spec == #'none'
    ifTrue: [ 
      optionBlock value: opt value: nil.
      stream atEnd
        ifTrue: [ ^ self ].
      peek := stream peek.
      peek isSeparator
        ifFalse: [ self error: 'Unexpected character' ].
      self skipWhiteSpace.
      ^ self
        parseLongOptions: optionSpecs
        shortOptions: shortOptionAliases
        do: optionBlock
        nonOptionsDo: nonOptionBlock ]
    ifFalse: [ 
      | optArg |
      optArg := self parseLongOptionArg: spec == #'required' for: opt.
      optionBlock value: opt value: optArg.
      stream atEnd
        ifTrue: [ ^ self ].
      ^ self
        parseLongOptions: optionSpecs
        shortOptions: shortOptionAliases
        do: optionBlock
        nonOptionsDo: nonOptionBlock ]