as yet unclassified
breakEnable: breakTokens
  "enable [break-list-index] "

  | breakReport breakRow breakNumber |
  breakTokens isEmpty
    ifTrue: [ 
      "enable all breakpoints"
      ^ self breakEnableAll ].
  breakReport := self class _breakReport.
  breakTokens
    do: [ :breakIndex | 
      breakRow := breakReport at: breakIndex asNumber.
      breakNumber := breakRow at: 1.
      self gsMethodClass _enableBreakNumber: breakNumber ]