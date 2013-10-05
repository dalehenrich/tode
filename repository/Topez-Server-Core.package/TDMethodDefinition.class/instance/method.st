as yet unclassified
method
  | beh |
  beh := self theBehavior.
  ^ beh
    compiledMethodAt: self selector
    ifAbsent: [ 
      "if it's not in the class, it might have been deleted"
      deletedMethod ]