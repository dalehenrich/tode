as yet unclassified
beditTokens: beditTokens
  | findTool definitions regex replacementString |
  beditTokens size > 2
    ifTrue: [ 
      regex := beditTokens at: 3.
      replacementString := beditTokens at: 4 ].
  findTool := self topez toolInstanceFor: 'find'.
  definitions := findTool find: beditTokens.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString