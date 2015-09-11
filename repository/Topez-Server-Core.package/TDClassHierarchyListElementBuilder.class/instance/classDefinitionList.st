as yet unclassified
classDefinitionList
  | classDefs |
  classDefs := Set new.
  self baseClassDefinitionList
    do: [ :classDef | 
      | cl |
      cl := classDef theClass.
      cl
        ifNotNil: [ 
          classDefs
            addAll:
              (cl allSuperclasses
                collect: [ :each | 
                  (TDClassDefinition fromClassWithHistory: each)
                    username: classDef username;
                    yourself ]).
          classDefs add: classDef.
          classDefs
            addAll:
              (cl allSubclasses
                collect: [ :each | 
                  (TDClassDefinition fromClassWithHistory: each)
                    username: classDef username;
                    yourself ]) ] ].
  ^ classDefs