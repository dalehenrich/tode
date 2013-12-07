accessing
creationTime
  creationTime ifNil: [ self created ].
  ^ creationTime