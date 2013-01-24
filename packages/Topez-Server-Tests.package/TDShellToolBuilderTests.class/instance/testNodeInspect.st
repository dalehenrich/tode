as yet unclassified
testNodeInspect
  "object aspect expected"

  self
    executeNodeBuilderSpecs:
      {{'123'.
      #'inspect'.
      '/ ([String] ''123''):
	1@ -> [Character] $1
	2@ -> [Character] $2
	3@ -> [Character] $3
'}}