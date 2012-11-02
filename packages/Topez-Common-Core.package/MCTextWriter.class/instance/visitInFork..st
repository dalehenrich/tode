as yet unclassified
visitInFork: aDefinition
    ^ String streamContents: [ :forkedStream | aDefinition accept: (self class on: forkedStream) ]