as yet unclassified
matchIndex
  matchIndex ifNil: [ matchIndex := 1 min: self matchingRanges size ].
  ^ matchIndex