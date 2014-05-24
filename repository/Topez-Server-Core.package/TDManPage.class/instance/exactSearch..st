as yet unclassified
exactSearch: searchString
  ((self summary includesSubstring: searchString)
    or: [ self description includesSubstring: searchString ])
    ifTrue: [ ^ true ].
  self subCommands values
    do: [ :sub | 
      (sub exactSearch: searchString)
        ifTrue: [ ^ true ] ].
  ^ false