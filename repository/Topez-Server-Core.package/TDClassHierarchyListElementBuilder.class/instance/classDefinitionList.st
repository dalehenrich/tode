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
              (classDef allSuperclasses
                collect: [ :each | 
                  each asTDClassDefinition
                    username: classDef username;
                    yourself ]).
          classDefs add: classDef.
          classDefs
            addAll:
              (classDef allSubclasses
                collect: [ :each | 
                  each asTDClassDefinition
                    username: classDef username;
                    yourself ]) ] ].
  ^ classDefs