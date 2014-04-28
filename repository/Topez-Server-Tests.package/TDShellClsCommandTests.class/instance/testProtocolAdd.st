as yet unclassified
testProtocolAdd
  "run without errors ... to keep me honest"

  | x |
  self createMockSubClass.
  self topez evaluateCommandString: 'cls --help protocol'.
  self topez
    evaluateCommandString:
      'cls protocol --add=' , self mockSubClassName , ' sample bubble'.
  self
    assert:
      (x := self mockSubClass categoryNames sorted) = #(#'bubble' #'sample').
  self topez
    evaluateCommandString:
      'cls protocol --class --add=' , self mockSubClassName , ' sample bubble'.
  self
    assert:
      (x := self mockSubClass class categoryNames sorted) = #(#'bubble' #'sample')