as yet unclassified
updateClassCategoryFor: classCat topez: topez
  | cats categoryDef selectedIndex |
  cats := TDClassCategoryList current.
  selectedIndex := 0.
  categoryDef := cats definitionList
    detect: [ :def | def categoryName = classCat ]
    ifNone: [ nil ].
  categoryDef
    ifNotNil: [ selectedIndex := cats definitionList indexOf: categoryDef ].
  selectedIndex == cats selectedIndex
    ifFalse: [ 
      (topez toolInstanceFor: 'browse')
        browseDefinitionListBlock: [ cats ]
        selectedIndex: selectedIndex
        label: 'Categories' ]