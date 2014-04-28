as yet unclassified
tearDownMocks
  self mockSubClass ifNotNil: [ :cls | cls removeFromSystem ].
  self mockClass ifNotNil: [ :cls | cls removeFromSystem ].
  self mockAlternateClass ifNotNil: [ :cls | cls removeFromSystem ]