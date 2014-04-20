as yet unclassified
regexSearch: regex
  ((regex search: self summary) or: [ regex search: self description ])
    ifTrue: [ ^ true ].
  self subCommands values
    do: [ :sub | 
      (sub regexSearch: regex)
        ifTrue: [ ^ true ] ].
  ^ false