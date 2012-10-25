as yet unclassified
instanceElementFor: instance level: level
    ^ self toString: (self instanceElementFor: instance limit: level) level: level + 1