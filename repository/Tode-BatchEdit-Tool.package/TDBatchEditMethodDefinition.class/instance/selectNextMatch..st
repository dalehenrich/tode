as yet unclassified
selectNextMatch: topez
  "answer true if an item was selected"

 useFormatter := topez enableFormatting.
  matchIndex := self matchIndex + 1.
  matchIndex > self matchingRanges size
    ifTrue: [ 
      matchIndex := nil.
      ^ false ].
  self itemSelected: topez.
  ^ true