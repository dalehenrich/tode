as yet unclassified
testNodeInspect
  "object aspect expected"

  self
    executeNodeBuilderSpecs:
      {{'123'.
      #'inspect'.
      '''123''/ ([String] ''123''):
	(class)@ -> [String class] String
	(value)@ -> [String] ''123''
	1@ -> [Character] $1
	2@ -> [Character] $2
	3@ -> [Character] $3
'}.
      {$o.
      #'inspect'.
      '$o/ ([Character] $o):
	(class)@ -> [Character class] Character
	(oop)@ -> [SmallInteger] 28444
	(asciiValue)@ -> [SmallInteger] 111
	(value)@ -> [String] ''o''
'}.
      {(Dictionary new
        add: '1' -> 1;
        add: '2' -> 2;
        yourself).
      #'inspect'.
      'aDictionary( ''2''->2, ''1''->1)/ ([Dictionary] aDictionary( ''2''->2, ''1''->1)):
	(class)@ -> [Dictionary class] Dictionary
	(value)@ -> [String] ''aDictionary''
	count@ -> [SmallInteger] 2
	emptySlotHint@ -> [SmallInteger] 8
	numEmptySlots@ -> [SmallInteger] 7
	tableSize@ -> [SmallInteger] 7
	unused@ -> [UndefinedObject] nil
	1@ -> [UndefinedObject] nil
	2@ -> [UndefinedObject] nil
	3@ -> [UndefinedObject] nil
	4@ -> [UndefinedObject] nil
	5@ -> [UndefinedObject] nil
	6@ -> [Association] ''2''->2
	7@ -> [Association] ''1''->1
	8@ -> [UndefinedObject] nil
	9@ -> [UndefinedObject] nil
	10@ -> [UndefinedObject] nil
	11@ -> [UndefinedObject] nil
	12@ -> [UndefinedObject] nil
	13@ -> [UndefinedObject] nil
	...
'}}