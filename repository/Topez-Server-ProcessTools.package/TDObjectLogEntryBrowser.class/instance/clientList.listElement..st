tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  objectLogEntries := self objectLogBlock value.
  self reversed
    ifTrue: [ objectLogEntries := objectLogEntries reversed ].
  ^ (objectLogEntries collect: [ :objectLogEntry | objectLogEntry label ])
    -> nil