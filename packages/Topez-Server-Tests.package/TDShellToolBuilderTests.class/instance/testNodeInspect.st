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
'}}