bu
bulist
  "
  bu [--dir=<backup-directory>] list
"

  | entries stream |
  self getSubcommandOptsMixedLongShort: {}.
  entries := self buEntries.
  stream := WriteStream on: String new.
  self buReport: entries on: stream.
  ^ TDCommandResult new
    displayText: stream contents asText;
    resultObject: entries;
    yourself