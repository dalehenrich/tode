as yet unclassified
fullHierarchyOf: aClass classOrganizer: classOrganizer
  "used for class history"

  ^ (classOrganizer allSuperclassesOf: aClass) , {aClass}
    , (classOrganizer allSubclassesOf: aClass)