as yet unclassified
methodClass
  | tokens sz class |
  self hasFileTreeSmalltalkSource
    ifFalse: [ ^ nil ].
  tokens := self filePath findTokens: '/'.
  sz := tokens size.
  class := tokens at: sz - 2.
  class := class copyFrom: 1 to: class size - '.class' size.
  ^ Smalltalk at: class asSymbol