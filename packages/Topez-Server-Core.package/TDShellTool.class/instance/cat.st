as yet unclassified
cat
  | node |
  node := topez lookup: (tokens at: 2).
  ^ TDCommandResult new
    displayText: node cat asText;
    resultObject: node;
    yourself