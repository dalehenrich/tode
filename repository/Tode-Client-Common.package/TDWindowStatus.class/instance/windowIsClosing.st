accessing
windowIsClosing
  "close all windows when last shell window is closed"

  self shellWindows isEmpty not
    ifTrue: [ ^ self ].
  self close.
  windows detect: [ :window | window notNil ] ifNone: [ ^ self ]