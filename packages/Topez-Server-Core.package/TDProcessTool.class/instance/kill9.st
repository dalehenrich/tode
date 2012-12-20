as yet unclassified
kill9
  "ps kill9 <process-index>"

  | process |
  process := self lookupProcess: (tokens at: 2) asNumber.
  ^ process terminate9