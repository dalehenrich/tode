commands
gsconfiguration
  "
  gs configuration [--gem|--stone]
"

  | reportDict reportType |
  self
    getSubcommandOptsMixedLongShort:
      {#('gem' nil #'none').
      #('stone' nil #'none')}.
  self subOptions
    at: 'gem'
    ifPresent: [ :ignored | reportType := #'gem' ]
    ifAbsent: [ 
      self options
        at: 'stone'
        ifPresent: [ :ignored | reportType := #'stone' ]
        ifAbsent: [ reportType := #'stone' ] ].
  reportDict := self gsconfiguration: reportType.
  reportDict edit: self topez.
  ^ reportDict