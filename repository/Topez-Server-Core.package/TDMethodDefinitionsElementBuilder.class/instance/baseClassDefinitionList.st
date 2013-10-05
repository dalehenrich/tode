as yet unclassified
baseClassDefinitionList
  | classDefs |
  classMap := Dictionary new.
  classDefs := Set new.
  self definitions
    do: [ :def | 
      (classMap
        at: def theClassName
        ifAbsent: [ classMap at: def theClassName put: OrderedCollection new ])
        add: def.
      classDefs add: def asTDClassDefinition ].
  ^ classDefs asArray