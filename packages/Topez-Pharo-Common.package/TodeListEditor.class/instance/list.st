accessing
list
  self clientElement ifNil: [ ^#() ].
  ^ self clientElement list