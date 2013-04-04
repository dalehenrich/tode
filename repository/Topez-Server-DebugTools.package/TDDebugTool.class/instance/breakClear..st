as yet unclassified
breakClear: breakTokens
  "clear [break-list-index]"

  | breakReport breakListIndex stepPoint meth |
  breakTokens size = 1
    ifTrue: [ ^ self gsMethodClass clearAllBreaks ].
  breakListIndex := (breakTokens at: 2) asNumber.
  breakReport := (self gsMethodClass _breakReport: false) at: 2.
  stepPoint := (breakReport at: breakListIndex) at: 4.
  meth := (breakReport at: breakListIndex) at: 5.
  ^ meth clearBreakAtStepPoint: stepPoint