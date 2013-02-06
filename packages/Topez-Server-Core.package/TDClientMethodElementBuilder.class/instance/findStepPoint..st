as yet unclassified
findStepPoint: selectionInterval
  | selectedOffset steps stepPoint prev gsMethod |
  selectedOffset := selectionInterval _from.
  gsMethod := self method.
  stepPoint := 0.
  steps := Array new: gsMethod _sourceString size.
  gsMethod _sourceOffsets
    do: [ :offset | 
      stepPoint := stepPoint + 1.
      steps at: offset put: stepPoint ].
  prev := 0.
  1 to: steps size do: [ :i | 
    stepPoint := steps at: i.
    stepPoint ~~ nil
      ifTrue: [ 
        (prev <= selectedOffset and: [ selectedOffset <= i ])
          ifTrue: [ ^ stepPoint ].
        prev := i ] ].
  ^ 1