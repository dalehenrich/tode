as yet unclassified
gsversion
  "
  gs version [--client|--gem|--stone]
"

  | reportDict reportType |
  self
    getOptsMixedLongShort:
      {#('client' nil #'none').
      #('gem' nil #'none').
      #('stone' nil #'none')}.
  self options
    at: 'client'
    ifPresent: [ :ignored | reportType := #'client' ]
    ifAbsent: [ 
      self options
        at: 'gem'
        ifPresent: [ :ignored | reportType := #'gem' ]
        ifAbsent: [ 
          self options
            at: 'stone'
            ifPresent: [ :ignored | reportType := #'stone' ]
            ifAbsent: [ reportType := #'stone' ] ] ].
  reportDict := self gsversion: reportType.
  reportDict edit: self topez.
  ^ reportDict