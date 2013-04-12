as yet unclassified
testObjectWindowView
  "object aspect windowId expected"

  self
    executeWindowBuilderSpecs:
      {{(1 -> '1').
      #'edit'.
      nil.
      'anArray( ''.        -> 1->''''1'''''', ''(class)@ -> Association'', ''key@     -> 1'', ''value@   -> ''''1'''''')/ ([Array] anArray( ''. -> 1->''''1'''''', ''(class)@ -> Association'', ''key@ -> 1'', ''value@ -> ''''1'''''')):
	(class)@ -> [Array class] Array
	1@ -> [String] ''. -> 1->''''1''''''
	2@ -> [String] ''(class)@ -> Association''
	3@ -> [String] ''key@ -> 1''
	4@ -> [String] ''value@ -> ''''1''''''
'}}