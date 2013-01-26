accessing
list
  self clientElement ifNil: [ ^ #() ].
  list ifNil: [ list := self clientElement list ].
  ^ list