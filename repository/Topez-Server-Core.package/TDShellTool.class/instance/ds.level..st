as yet unclassified
ds: node level: level
  | displayPolicy |
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  self dsNode: node level: level on: displayPolicy.
  ^ TDCommandResult new
    displayText: displayPolicy stream contents;
    resultObject: node;
    yourself