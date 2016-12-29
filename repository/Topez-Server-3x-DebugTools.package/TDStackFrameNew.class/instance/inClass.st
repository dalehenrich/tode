as yet unclassified
inClass
  self method ifNil: [ ^ nil ].
  ^ self homeMethod ifNotNil: [ :hm | hm inClass ]