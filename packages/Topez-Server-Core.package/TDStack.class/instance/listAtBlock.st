as yet unclassified
listAtBlock
  ^ [ :aTopez :index | 
  STON toString: (self frames at: index) printString.
  (self frames at: index) edit: aTopez windowId: nil ]