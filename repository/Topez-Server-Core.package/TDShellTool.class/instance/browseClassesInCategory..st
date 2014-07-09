browse
browseClassesInCategory: classCategory
  ^ self
    browseClassesBlock: [ self findCategoryClassDefinitionsExact: classCategory ]
    label: 'Classes in category ' , classCategory