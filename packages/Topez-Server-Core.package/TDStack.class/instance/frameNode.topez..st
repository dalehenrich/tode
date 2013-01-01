as yet unclassified
frameNode: frameIndex topez: aTopez
  | stackFrame |
  stackFrame := self frames at: frameIndex.
  ^ stackFrame asTDObjectNode: aTopez aspect: #'debug'