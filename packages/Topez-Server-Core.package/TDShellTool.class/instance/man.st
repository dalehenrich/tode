as yet unclassified
man
  ^ tokens size = 1
    ifFalse: [ 
      | node |
      node := topez commands at: (tokens at: 2).
      node manPage asText ]