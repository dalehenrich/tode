private
buildObjectCreationEntries
  self objectCreationTally
    ifFalse: [ ^ self ].
  self build33ObjectCreationEntries