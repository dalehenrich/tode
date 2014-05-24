as yet unclassified
testComment01
  | clsTool cls comment |
  clsTool := self tool.
  cls := self mockClass.
  comment := clsTool clscomment: cls.
  self assert: comment = self mockClassComment