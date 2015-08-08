find
findCategoryClassDefinitionsExact: categoryName
  | defs |
  defs := OrderedCollection new.
  (ClassOrganizer cachedOrganizer categories keys asArray
    select: [ :category | categoryName = category ])
    do: [ :category | 
      defs
        addAll:
          (TDClassCategoryDefinition new categoryName: category) classDefinitions ].
  ^ defs