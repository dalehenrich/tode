commands
cat
  | node result |
  node := topez lookup: (tokens at: 2).
  result := node cat.
  ^ TDCommandResult new
    displayText: result asText;
    resultObject: result;
    yourself