client forwarder
deleteWindowAt: aWindowId
  "close the window with <aWindowId>"

  | forwarder |
  forwarder := self topezClientForwarder.
  (Reflection classOf: forwarder) ~~ UndefinedObject
    ifTrue: [ forwarder deleteWindowAt: aWindowId ]