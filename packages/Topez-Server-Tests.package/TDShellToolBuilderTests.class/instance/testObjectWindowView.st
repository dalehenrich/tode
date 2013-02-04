as yet unclassified
testObjectWindowView
  "object aspect windowId expected"

  self
    executeWindowBuilderSpecs:
      {{(1 -> '1').
      #'browse'.
      nil.
      'anArray( ''.        -> 1->''''1''''/'', ''(class)@ -> Association'', ''(value)@ -> ''''1->''''''''1'''''''''''''', ''key@     -> 1'', ''value@   -> ''''1'''''')/ ([Array] anArray( ''. -> 1->''''1''''/'', ''(class)@ -> Association'', ''(value)@ -> ''''1->''''''''1'''''''''''''', ''key@ -> 1'', ''value@ -> ''''1'''''')):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> 1->''''1''''/''
	2@ -> [String] ''(class)@ -> Association''
	3@ -> [String] ''(value)@ -> ''''1->''''''''1''''''''''''''
	4@ -> [String] ''key@ -> 1''
	5@ -> [String] ''value@ -> ''''1''''''
'}}