as yet unclassified
psdelay
  "ps delay <seconds>"

  | seconds |
  seconds := (tokens at: 2) asInteger.
  (Delay forSeconds: seconds) wait.
  ^ true