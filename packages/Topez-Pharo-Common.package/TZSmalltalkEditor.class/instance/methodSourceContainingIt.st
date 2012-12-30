menu messages
methodSourceContainingIt
  "Open a browser on methods which contain the current selection in their source (case-sensitive full-text search of source).   EXTREMELY slow!"

  self lineSelectAndEmptyCheck: [ ^ self ].
  (self evaluator class commands at: 'edit')
    value: self evaluator
    value: self topez
    value:
      {'edit'.
      'sourceContainingIt'.
      (self selection string)}