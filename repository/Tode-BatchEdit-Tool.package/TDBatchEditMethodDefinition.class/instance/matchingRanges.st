as yet unclassified
matchingRanges
  matchingRanges ifNil: [ matchingRanges := self calculateRegexMatches ].
  ^ matchingRanges