accessing
myOop
  myOop ifNil: [ myOop := self asOop ].
  ^ myOop