as yet unclassified
baseClassDefinitionList
  | classDefs |
  classMap := Dictionary new.
  classDefs := Set new.
  self object
    do: [ :def | 
      | ar |
      ar := classMap
        at: def className
        ifAbsent: [ 
          classMap
            at: def className
            put:
              {nil.
              {}} ].
      (def isKindOf: TDMcClassDefinition)
        ifTrue: [ ar at: 1 put: def ]
        ifFalse: [ (ar at: 2) add: def ].
      classDefs add: def asTDClassDefinition ].
  ^ classDefs asArray