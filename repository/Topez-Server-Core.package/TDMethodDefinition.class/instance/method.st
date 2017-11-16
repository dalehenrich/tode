as yet unclassified
method
  | beh |
  beh := self theBehavior.
  ^ self appEnv
    method: self selector
    for: beh
    ifAbsent: [ 
      "if it's not in the class, it might have been deleted"
      deletedMethod ]