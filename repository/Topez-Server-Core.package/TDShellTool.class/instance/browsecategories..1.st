browse
browseCategories
  TDClassCategoryList reset.
  ^ self
    browseDefinitionListBlock: [ TDClassCategoryList current ]
    selectedIndex: 0
    label: 'Categories'