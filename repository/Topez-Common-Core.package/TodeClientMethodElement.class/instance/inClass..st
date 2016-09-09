as yet unclassified
inClass: aClass
  "can be deprecated ... eventually ... using inClassOop directly"

  aClass ifNil: [ ^ self ].
  inClass := aClass