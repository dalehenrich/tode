as yet unclassified
methodBehavior
  | tokens sz class ext cls isMeta |
  self hasFileTreeSmalltalkSource
    ifFalse: [ ^ nil ].
  tokens := self filePath findTokens: '/'.
  sz := tokens size.
  class := tokens at: sz - 2.
  (class endsWith: '.class')
    ifTrue: [ ext := '.class' ]
    ifFalse: [ ext := '.extension' ].
  class := class copyFrom: 1 to: class size - ext size.
  isMeta := (tokens at: sz - 1) = 'class'.
  cls := Smalltalk at: class asSymbol.
  isMeta
    ifTrue: [ cls := cls class ].
  ^ cls