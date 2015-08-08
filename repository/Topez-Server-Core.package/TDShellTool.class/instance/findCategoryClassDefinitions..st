find
findCategoryClassDefinitions: regexPattern
  "find category <regex-pattern>"

  | regex defs |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  defs := OrderedCollection new.
  (ClassOrganizer cachedOrganizer categories keys asArray
    select: [ :category | regex search: category ])
    do: [ :category | 
      defs
        addAll:
          (TDClassCategoryDefinition new categoryName: category) classDefinitions ].
  ^ defs