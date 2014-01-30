client forwarder
resetAllGlobalNames
  "cause SHOUT globalNames cache to be reset"

  | forwarder |
  forwarder := self topezClientForwarder.
  (Reflection classOf: forwarder) ~~ UndefinedObject
    ifTrue: [ forwarder resetAllGlobalNames ]