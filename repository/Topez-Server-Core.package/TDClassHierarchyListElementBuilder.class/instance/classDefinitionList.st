accessing
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
                  each asTDClassDefinition
                    username: classDef username;
                    yourself ]).
          classDefs add: classDef.
          classDefs
            addAll:
              (cl allSubclasses
                collect: [ :each | 
                  each asTDClassDefinition
                    username: classDef username;
                    yourself ]) ] ].
  ^ classDefs