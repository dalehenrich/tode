as yet unclassified
breakDisable: breakTokens
  "disable [break-list-index] "

  | breakReport breakRow breakNumber |
  breakTokens size = 1
    ifTrue: [ 
      "disable all breakpoints"
      ^ self breakDisableAll ].
  breakReport := (self gsMethodClass _breakReport: false) at: 2.
  breakRow := breakReport at: (breakTokens at: 2) asNumber.
  breakNumber := breakRow at: 1.
  ^ self gsMethodClass _disableBreakNumber: breakNumber