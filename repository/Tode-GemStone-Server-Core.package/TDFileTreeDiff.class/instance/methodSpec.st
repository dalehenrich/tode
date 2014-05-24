as yet unclassified
methodSpec
  | tokens sz meta class ext |
  self hasFileTreeSmalltalkSource
    ifFalse: [ ^ self filePath ].
  ((self filePath includesSubstring: '.class')
    or: [ self filePath includesSubstring: '.extension' ]) not
    ifTrue: [ ^ self filePath ].
  tokens := self filePath findTokens: '/'.
  sz := tokens size.
  meta := ''.
  (tokens at: sz - 1) = 'class'
    ifTrue: [ meta := ' class' ].
  class := tokens at: sz - 2.
  (class endsWith: 'class')
    ifTrue: [ ext := '.class' ]
    ifFalse: [ ext := '.extension' ].
  class := class copyFrom: 1 to: class size - ext size.
  ^ class , meta , '>>' , self methodSelector asString