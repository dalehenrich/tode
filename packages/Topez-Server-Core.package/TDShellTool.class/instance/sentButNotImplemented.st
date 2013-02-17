as yet unclassified
sentButNotImplemented
  "port sentButNotImplemented"

  | sbni sentNotImplemented |
  sbni := SentButNotImplementedTest new.
  (sentNotImplemented := sbni sentButNotImplemented)
    removeAllPresent: sbni specialCases.
  ^ sentNotImplemented