as yet unclassified
testObjectWindowView
  "object aspect windowId expected"

  self
    executeWindowBuilderSpecs:
      {{(1 -> '1').
      #'browse'.
      nil.
      'anArray( ''.        -> [TDObjectNode] 1->''''1''''/'', ''(class)@ -> [Association class] Association'', ''(value)@ -> [String] ''''1->''''''''1'''''''''''''', ''key@     -> [SmallInteger] 1'', ''value@   -> [String] ''''1'''''')/ ([Array] anArray( ''. -> [TDObjectNode] 1->''''1''''/'', ''(class)@ -> [Association class] Association'', ''(value)@ -> [String] ''''1->''''''''1'''''''''''''', ''key@ -> [SmallInte...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> [TDObjectNode] 1->''''1''''/''
	2@ -> [String] ''(class)@ -> [Association class] Association''
	3@ -> [String] ''(value)@ -> [String] ''''1->''''''''1''''''''''''''
	4@ -> [String] ''key@ -> [SmallInteger] 1''
	5@ -> [String] ''value@ -> [String] ''''1''''''
'}}