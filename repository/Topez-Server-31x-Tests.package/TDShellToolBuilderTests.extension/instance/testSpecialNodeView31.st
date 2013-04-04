*topez-server-31x-tests
testSpecialNodeView31
  "object aspect expected"

  self
    executeNodeBuilderSpecs:
      {{(FixedPoint fromString: '117.145').
      #'view'.
      '117.145/ ([FixedPoint] 117.145):
	(class)@ -> [FixedPoint class] FixedPoint
	(value)@ -> [String] ''117.145''
'}}