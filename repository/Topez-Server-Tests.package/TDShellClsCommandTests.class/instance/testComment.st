as yet unclassified
testComment
  | clsTool clsName comment |
  clsTool := self tool.
  clsName := self mockClassName.
  comment := clsTool clscomment: clsName.
  self assert: comment = self mockClassComment