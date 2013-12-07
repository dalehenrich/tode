leaf node accessing
modificationTime
  modificationTime ifNil: [ self modified ].
  ^ modificationTime