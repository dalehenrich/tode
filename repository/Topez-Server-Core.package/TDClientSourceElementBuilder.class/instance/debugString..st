as yet unclassified
debugString: aString
  | doItContext |
  doItContext := self doItContext.
  ^ aString debugItIn: doItContext