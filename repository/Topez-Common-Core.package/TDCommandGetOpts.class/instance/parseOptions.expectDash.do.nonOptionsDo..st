private
parseOptions: optionSpecs expectDash: expectDash do: optionBlock nonOptionsDo: nonOptionBlock
  | peek opt spec |
  expectDash
    ifTrue: [ 
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
      opt := stream peek.
      opt == $-
        ifTrue: [ 
          "hit --"
          stream next.
          self skipWhiteSpace.
          ^ self ].
      stream next ]
    ifFalse: [ 
      opt := stream peek.
      opt == $-
        ifTrue: [ 
          stream next.
          stream peek == $-
            ifTrue: [ 
              stream next.
              ^ self ].
          self error: 'Unexpected --' ].
      stream next ].
  spec := optionSpecs
    at: opt
    ifAbsent: [ ^ self error: 'Unknown option: ' , opt asString ].
  spec == #'none'
    ifTrue: [ 
      | expectDashNow |
      optionBlock value: opt value: nil.
      stream atEnd
        ifTrue: [ ^ self ].
      expectDashNow := stream peek isSeparator.
      self skipWhiteSpace.
      self
        parseOptions: optionSpecs
        expectDash: expectDashNow
        do: optionBlock
        nonOptionsDo: nonOptionBlock ]
    ifFalse: [ 
      | optArg |
      optArg := self parseOptionArg: spec == #'required' for: opt.
      optionBlock value: opt value: optArg.
      stream atEnd
        ifTrue: [ ^ self ].
      self
        parseOptions: optionSpecs
        expectDash: stream peek isSeparator
        do: optionBlock
        nonOptionsDo: nonOptionBlock ]