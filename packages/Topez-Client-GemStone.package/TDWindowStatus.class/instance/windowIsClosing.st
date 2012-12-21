accessing
windowIsClosing
  "close all windows when last shell window is closed"

  self shellWindows isEmpty not
    ifTrue: [ ^ self ].
  (windows select: [ :each | each notNil ])
    do: [ :window | 
      window model windowIsClosing.
      window delete ].
  windows detect: [ :window | window notNil ] ifNone: [ ^ self ]