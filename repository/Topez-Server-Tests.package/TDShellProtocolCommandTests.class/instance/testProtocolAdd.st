as yet unclassified
testProtocolAdd
  | tool cls newProtocol x |
  tool := self tool.
  cls := self mockClass.
  newProtocol := 'new category'.
  self assert: (x := cls categoryNames) = #(#'instance-side').
  tool protocol: cls add: {newProtocol}.
  self assert: ((x := cls categoryNames) includes: #'new category').
  self assert: cls class categoryNames = #(#'class-side').
  tool protocol: cls class add: {newProtocol}.
  self assert: (cls class categoryNames includes: #'new category')