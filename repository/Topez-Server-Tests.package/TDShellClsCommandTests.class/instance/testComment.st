as yet unclassified
testComment
  | clsTool cls comment |
  clsTool := self tool.
  cls := self mockClass.
  comment := clsTool clscomment: cls.
  self assert: comment = self mockClassComment