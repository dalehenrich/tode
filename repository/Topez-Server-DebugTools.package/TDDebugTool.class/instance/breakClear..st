as yet unclassified
breakClear: breakTokens
  | breakReport stepArs |
  breakTokens isEmpty
    ifTrue: [ ^ self breakClearBreakpoints ].
  breakReport := self class _breakReport.
  stepArs := breakTokens
    collect: [ :breakIndex | 
      | breakListIndex stepPoint meth |
      breakListIndex := breakIndex asNumber.
      stepPoint := (breakReport at: breakListIndex) at: 4.
      meth := (breakReport at: breakListIndex) at: 5.
      {meth.
      stepPoint} ].
  stepArs
    do: [ :ar | 
      self clearRemoteBreakpoint: (ar at: 1) step: (ar at: 2).
      (ar at: 1) clearBreakAtStepPoint: (ar at: 2) ]