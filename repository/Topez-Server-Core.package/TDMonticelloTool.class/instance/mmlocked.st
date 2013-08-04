as yet unclassified
mmlocked
  "mm locked"

  | specs displayPolicy stream |
  specs := Metacello image locked.
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  stream := displayPolicy stream.
  specs
    do: [ :spec | 
      spec displayOnPolicy: displayPolicy.
      stream cr ].
  ^ TDCommandResult new
    displayText: stream contents;
    resultObject: specs;
    yourself