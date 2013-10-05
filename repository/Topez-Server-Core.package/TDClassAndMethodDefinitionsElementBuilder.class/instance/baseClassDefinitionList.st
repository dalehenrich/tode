as yet unclassified
baseClassDefinitionList
  | classDefs |
  classMap := Dictionary new.
  classDefs := OrderedCollection new.
  self object
    do: [ :def | 
      classMap at: def theClassName put: def.
      classDefs add: def asTDClassDefinition ].
  ^ classDefs