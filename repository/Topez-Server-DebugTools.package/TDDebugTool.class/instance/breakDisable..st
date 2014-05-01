as yet unclassified
breakDisable: breakTokens
  "disable [break-list-index] "

  | breakReport breakRow breakNumber |
  breakTokens isEmpty
    ifTrue: [ 
      "disable all breakpoints"
      ^ self breakDisableAll ].
  breakReport := (self gsMethodClass _breakReport: false) at: 2.
  breakTokens
    do: [ :breakIndex | 
      breakRow := breakReport at: breakIndex asNumber.
      breakNumber := breakRow at: 1.
      self gsMethodClass _disableBreakNumber: breakNumber ]