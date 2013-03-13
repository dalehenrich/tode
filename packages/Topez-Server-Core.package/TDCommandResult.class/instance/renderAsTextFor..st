as yet unclassified
renderAsTextFor: topez
  self displayText ifNotNil: [ ^ self displayText ].
  ^ topez renderAsText: self resultObject