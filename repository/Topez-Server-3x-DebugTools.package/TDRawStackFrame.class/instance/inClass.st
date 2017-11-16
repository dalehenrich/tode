accessing
inClass
  self gsMethod ifNil: [ ^ nil ].
  ^ self homeMethod ifNotNil: [ :hm | hm inClass ]