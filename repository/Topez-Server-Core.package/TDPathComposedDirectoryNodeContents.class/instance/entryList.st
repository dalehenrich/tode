accessing
entryList
  entryList ifNil: [ entryList := OrderedCollection new ].
  ^ entryList