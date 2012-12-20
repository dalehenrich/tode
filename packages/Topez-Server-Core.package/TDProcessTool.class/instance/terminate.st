as yet unclassified
terminate
  "ps terminate <process-index>"

  | process |
  process := self lookupProcess: (tokens at: 2) asNumber.
  ^ process terminate