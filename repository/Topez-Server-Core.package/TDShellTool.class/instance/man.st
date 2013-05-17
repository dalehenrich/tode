as yet unclassified
man
  ^ tokens size = 1
    ifFalse: [ 
      | node man |
      node := topez commands at: (tokens at: 2).
      man := node manPage asText.
      man editUsing: (TDEditorSpec topez: topez).
      man ]