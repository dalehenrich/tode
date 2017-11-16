private
looseMethodDefinitions: listElement
  | classesDefinedInList methodDefs |
  classesDefinedInList := IdentityBag new.
  listElement itemCache
    do: [ :itemAttribute | 
      itemAttribute object
        classDefinitionDo: [ :classDef | classesDefinedInList add: classDef className asSymbol ] ].
  methodDefs := {}.
  listElement itemCache
    do: [ :itemAttribute | 
      itemAttribute object
        methodDefinitionDo: [ :methodDef | 
          (classesDefinedInList includes: methodDef className asSymbol)
            ifFalse: [ methodDefs add: methodDef ] ] ].
  ^ methodDefs