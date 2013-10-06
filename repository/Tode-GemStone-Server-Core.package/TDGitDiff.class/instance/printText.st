as yet unclassified
printText
  ^ Text
    string: self printString
    attribute: (TextEmphasis perform: self selectionAttribute)