as yet unclassified
methodSpec
  | tokens sz meta class |
  self hasFileTreeSmalltalkSource
    ifFalse: [ ^ self filePath ].
  tokens := self filePath findTokens: '/'.
  sz := tokens size.
  meta := ''.
  (tokens at: sz - 1) = 'class'
    ifTrue: [ meta := ' class' ].
  class := tokens at: sz - 2.
  class := class copyFrom: 1 to: class size - '.class' size.
  ^ ' ' , class , meta , ' >> ' , self methodSelector asString , ' '