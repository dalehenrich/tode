as yet unclassified
replaceMatchWith: replacementString topez: topez
  "answer true if an item was selected"

  | matchingRange newSource |
  matchingRanges := nil.
  useFormatter := topez enableFormatting.
  self matchIndex <= 0
    ifTrue: [ ^ false ].
  matchingRange := self matchingRange.
  newSource := self formatSource
    copyReplaceFrom: matchingRange _from
    to: matchingRange _to
    with: replacementString.
  self
    compile: newSource withGemstoneLineEndings
    classified: self methodCategory.
  matchingRanges := nil.
  matchIndex > self matchingRanges size
    ifTrue: [ 
      matchIndex := nil.
      ^ false ].
  self itemSelected: topez.
  ^ true