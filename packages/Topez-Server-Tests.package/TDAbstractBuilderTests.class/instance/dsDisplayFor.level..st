as yet unclassified
dsDisplayFor: anObject level: level
  | displayPolicy |
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  (TDShellTool
    topez: self topez
    objIn: nil
    tokens: {}
    windowId: nil) dsNode: anObject level: level on: displayPolicy.
  ^ displayPolicy stream contents asString