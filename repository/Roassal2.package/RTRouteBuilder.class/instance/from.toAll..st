as yet unclassified
from: aCityName toAll: cityNames
	cityNames do: [ :toCityName |
		routes add: aCityName -> toCityName.
	]