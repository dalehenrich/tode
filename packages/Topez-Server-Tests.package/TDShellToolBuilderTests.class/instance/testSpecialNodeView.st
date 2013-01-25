as yet unclassified
testSpecialNodeView
  "object aspect expected"

  self
    executeNodeBuilderSpecs:
      {{$o.
      #'view'.
      '$o/ ([Character] $o):
	(class)@ -> [Character class] Character
	(oop)@ -> [SmallInteger] 28444
	(asciiValue)@ -> [SmallInteger] 111
	(value)@ -> [String] ''o''
'}.
      {117.
      #'view'.
      '117/ ([SmallInteger] 117):
	(class)@ -> [SmallInteger class] SmallInteger
	(oop)@ -> [SmallInteger] 938
	(hex)@ -> [String] ''16r75''
	(value)@ -> [String] ''117''
'}.
      {(SmallInteger maximumValue + 1).
      #'view'.
      '1152921504606846976/ ([LargeInteger] 1152921504606846976):
	(class)@ -> [LargeInteger class] LargeInteger
	(hex)@ -> [String] ''16r1000000000000000''
	(value)@ -> [String] ''1152921504606846976''
'}.
      {(SmallInteger minimumValue - 1).
      #'view'.
      '-1152921504606846977/ ([LargeInteger] -1152921504606846977):
	(class)@ -> [LargeInteger class] LargeInteger
	(hex)@ -> [String] ''16r-1000000000000001''
	(value)@ -> [String] ''-1152921504606846977''
'}.
      {117.145.
      #'view'.
      '1.1714500000000000E+02/ ([SmallDouble] 1.1714500000000000E+02):
	(class)@ -> [SmallDouble class] SmallDouble
	(oop)@ -> [LargeInteger] 9643495957593566742
	(value)@ -> [String] ''1.1714500000000000E+02''
'}.
      {117.145s3.
      #'view'.
      '117.145/ ([ScaledDecimal] 117.145):
	(class)@ -> [ScaledDecimal class] ScaledDecimal
	(value)@ -> [String] ''117.145''
'}.
      {(FixedPoint fromString: '117.145').
      #'view'.
      '117.145/ ([FixedPoint] 117.145):
	(class)@ -> [FixedPoint class] FixedPoint
	(value)@ -> [String] ''117.145''
'}.
      {true.
      #'view'.
      'true/ ([Boolean] true):
	(class)@ -> [Boolean class] Boolean
	(oop)@ -> [SmallInteger] 268
	(value)@ -> [String] ''true''
'}.
      {nil.
      #'view'.
      'nil/ ([UndefinedObject] nil):
	(class)@ -> [UndefinedObject class] UndefinedObject
	(oop)@ -> [SmallInteger] 20
	(value)@ -> [String] ''nil''
'}}