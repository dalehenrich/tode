as yet unclassified
customDefaultAction
  true
    ifTrue: [ ^ super customDefaultAction ].
  ^ {#'debug'.
  self}