as yet unclassified
matchingRange
  self matchIndex <= 0
    ifTrue: [ ^ 1 to: 0 ].
  ^ self matchingRanges at: matchIndex