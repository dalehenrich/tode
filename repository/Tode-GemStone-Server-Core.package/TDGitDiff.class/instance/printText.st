as yet unclassified
printText
  | attributes |
  attributes := {(TextEmphasis perform: self selectionAttribute)}.
  ^ Text string: self printString attributes: attributes