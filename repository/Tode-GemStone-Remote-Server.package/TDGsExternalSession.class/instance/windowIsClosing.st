windows
windowIsClosing
  self logoutOnClose
    ifTrue: [ 
      self inDebugger: false.
      self logout ]