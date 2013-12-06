ston
fromSton: stonReader
  super fromSton: stonReader.
  self contents values do: [ :child | child parent: self ]