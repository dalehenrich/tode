as yet unclassified
testProtocolRemove
  | tool cls cats |
  tool := self tool.
  cls := self mockClass.
  self assert: (cats := cls categoryNames) = #(#'instance-side').
  tool protocol: cls remove: {(cats first)}.
  self assert: cls categoryNames = #().
  self assert: (cats := cls class categoryNames) = #(#'class-side').
  tool protocol: cls class remove: {(cats first)}.
  self assert: cls class categoryNames = #()