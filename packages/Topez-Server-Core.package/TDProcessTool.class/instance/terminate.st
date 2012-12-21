as yet unclassified
terminate
  "ps terminate <process-oop>"

  ^ (Object _objectForOop: (tokens at: 2) asNumber) terminate