*tode-ast-extensions
parseWorkspace: aString onError: aBlock
  | parser |
  parser := self new.
  parser errorBlock: aBlock.
  parser initializeParserWith: aString.
  ^ parser parseWorkspace: aString