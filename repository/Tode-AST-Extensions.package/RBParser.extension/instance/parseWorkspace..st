*tode-ast-extensions
parseWorkspace: aString
  | node |
  node := self parseWorkspace.
  self atEnd
    ifFalse: [ self parserError: 'Unknown input at end' ].
  node source: aString.
  ^ node