as yet unclassified
testProtocolRename
  | tool cls newProtocol cats |
  tool := self tool.
  cls := self mockClass.
  newProtocol := 'new category'.
  self assert: (cats := cls categoryNames) = #(#'instance-side').
  tool protocol: cls rename: cats first to: newProtocol.
  self assert: cls categoryNames = #(#'new category').
  self assert: (cats := cls class categoryNames) = #(#'class-side').
  tool protocol: cls class rename: cats first to: newProtocol.
  self assert: cls class categoryNames = #(#'new category')