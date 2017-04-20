commands
gsversion
  "
  gs version [--client|--gem|--stone]
"

  | reportDict reportType |
  self
    getSubcommandOptsMixedLongShort:
      {#('client' nil #'none').
      #('gem' nil #'none').
      #('stone' nil #'none')}.
  self subOptions
    at: 'client'
    ifPresent: [ :ignored | reportType := #'client' ]
    ifAbsent: [ 
      self subOptions
        at: 'gem'
        ifPresent: [ :ignored | reportType := #'gem' ]
        ifAbsent: [ 
          self subOptions
            at: 'stone'
            ifPresent: [ :ignored | reportType := #'stone' ]
            ifAbsent: [ reportType := #'stone' ] ] ].
  reportDict := self gsversion: reportType.
  reportDict edit: self topez.
  ^ reportDict