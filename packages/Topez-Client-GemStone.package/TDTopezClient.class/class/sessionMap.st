class initialization
sessionMap
  SessionMap ifNil: [ SessionMap := Dictionary new ].
  ^ SessionMap