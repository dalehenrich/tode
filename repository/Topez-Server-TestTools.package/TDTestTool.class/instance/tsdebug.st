as yet unclassified
tsdebug
  "ts debug <test-spec>"

  | arg |
  arg := tokens at: 2.
  ^ self tsdebug: arg