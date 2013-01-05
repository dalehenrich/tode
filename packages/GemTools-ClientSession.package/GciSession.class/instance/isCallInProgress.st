public gci calls
isCallInProgress
  "don't use critical block"

  self setSession.
  ^ self library apiGciCallInProgress