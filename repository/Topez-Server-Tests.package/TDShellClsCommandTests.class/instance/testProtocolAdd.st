as yet unclassified
testProtocolAdd
  "run without errors ... to keep me honest"

  | x |
  self createMockSubClass.
  self evaluateCommandString: 'cls --help protocol'.
  self
    evaluateCommandString:
      'cls protocol --add=' , self mockSubClassName , ' sample bubble'.
  self
    assert:
      (x := self mockSubClass categoryNames sorted) = #(#'bubble' #'sample').
  self
    evaluateCommandString:
      'cls protocol --class --add=' , self mockSubClassName , ' sample bubble'.
  self
    assert:
      (x := self mockSubClass class categoryNames sorted) = #(#'bubble' #'sample')