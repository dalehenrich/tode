as yet unclassified
dsDisplayFor: anObject level: level
  | stream |
  stream := WriteStream on: String new.
  (TDShellTool
    topez: self topez
    objIn: nil
    tokens: {}
    windowId: nil)
    dsNode: anObject
    level: level
    displayOops: false
    on: stream.
  ^ stream contents