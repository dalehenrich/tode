accessing
spawnWindow
  | topezOop |
  topezOop := self topezClientForwarder spawnWindow.
  ^ Object _objectForOop: topezOop