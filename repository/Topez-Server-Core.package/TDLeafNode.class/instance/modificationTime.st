accessing
modificationTime
  modificationTime ifNil: [ self modified ].
  ^ modificationTime