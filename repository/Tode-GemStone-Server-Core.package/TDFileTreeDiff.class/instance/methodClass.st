as yet unclassified
methodClass
  | tokens sz class ext |
  self hasFileTreeSmalltalkSource
    ifFalse: [ ^ nil ].
  tokens := self filePath findTokens: '/'.
  sz := tokens size.
  class := tokens at: sz - 2.
  (class endsWith: '.class')
    ifTrue: [ ext := '.class' ]
    ifFalse: [ ext := '.extension' ].
  class := class copyFrom: 1 to: class size - ext size.
  ^ Smalltalk at: class asSymbol