as yet unclassified
tearDownMocks
  self mockClass ifNotNil: [ :cls | cls removeFromSystem ].
  self mockAlternateClass ifNotNil: [ :cls | cls removeFromSystem ].
  self mockSubClass ifNotNil: [ :cls | cls removeFromSystem ]