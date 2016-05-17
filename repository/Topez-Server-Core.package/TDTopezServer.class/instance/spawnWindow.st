client forwarder
spawnWindow
  | topezOop |
  topezOop := self topezClientForwarder perform: #'spawnWindowFromServer'.
  ^ Object _objectForOop: topezOop