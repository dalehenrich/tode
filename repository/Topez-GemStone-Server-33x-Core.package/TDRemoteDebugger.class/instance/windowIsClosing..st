tools
windowIsClosing: listElement
  super windowIsClosing: listElement.
  self terminateProcessOnClose
    ifTrue: [ 
      self session sessionId > 0
        ifTrue: [ self session logout ] ]