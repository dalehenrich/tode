as yet unclassified
breakClear: breakTokens
  | breakReport stepArs |
  breakTokens isEmpty
    ifTrue: [ ^ self breakClearBreakpoints ].
  breakReport := (self gsMethodClass _breakReport: false) at: 2.
  stepArs := breakTokens
    collect: [ :breakIndex | 
      | breakListIndex stepPoint meth |
      breakListIndex := breakIndex asNumber.
      stepPoint := (breakReport at: breakListIndex) at: 4.
      meth := (breakReport at: breakListIndex) at: 5.
      {meth.
      stepPoint} ].
  stepArs do: [ :ar | (ar at: 1) clearBreakAtStepPoint: (ar at: 2) ]