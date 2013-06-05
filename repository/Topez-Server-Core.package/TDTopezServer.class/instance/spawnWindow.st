accessing
spawnWindow
  | topezOop |
  topezOop := self topezClientForwarder spawnWindowFromServer.
  ^ Object _objectForOop: topezOop