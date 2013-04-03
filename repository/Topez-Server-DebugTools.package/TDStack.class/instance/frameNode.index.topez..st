as yet unclassified
frameNode: parentNode index: frameIndex topez: aTopez
  | stackFrame |
  stackFrame := self frames at: frameIndex.
  ^ stackFrame asTDObjectNode: parentNode topez: aTopez aspect: #'view'