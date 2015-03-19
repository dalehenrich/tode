bu
bulist
  "
  bu [--dir=<backup-directory>] list
"

  | entries stream snapshotEntries |
  self getSubcommandOptsMixedLongShort: {}.
  entries := self buEntries.
  snapshotEntries := self snapshotEntries.
  stream := WriteStream on: String new.
  self buReport: entries snapshot: snapshotEntries on: stream.
  ^ TDCommandResult new
    displayText: stream contents asText;
    resultObject: entries;
    yourself