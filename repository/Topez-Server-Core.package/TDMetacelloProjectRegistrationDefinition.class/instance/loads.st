accessing
loads
  | loads |
  self projectSpec loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := 'default' ].
  self entry ifNil: [ ^ loads ].
  self entry loads
    ifNotNil: [ :entryLoads | 
      entryLoads = loads
        ifFalse: [ loads := entryLoads ] ].
  ^ loads