accessing
windowIsClosing
  | status |
  windowStatus ifNil: [ ^ self ].
  windowStatus unregisterShellWindow: self shellWindow.
  status := windowStatus.
  windowStatus := nil.
  status windowIsClosing.
  status shellWindows isEmpty
    ifTrue: [ self exit ]