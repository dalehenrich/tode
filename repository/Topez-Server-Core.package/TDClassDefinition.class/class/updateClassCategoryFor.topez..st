as yet unclassified
updateClassCategoryFor: classCat topez: topez
  | categories categoryDef selectedIndex |
  categories := TDClassCategoryList current.
  selectedIndex := 0.
  categoryDef := categories definitionList
    detect: [ :def | def categoryName = classCat ]
    ifNone: [ nil ].
  categoryDef
    ifNotNil: [ selectedIndex := categories definitionList indexOf: categoryDef ].
  selectedIndex == categories selectedIndex
    ifFalse: [ 
      | configs configDef |
      categories selectedIndex: selectedIndex.
      categories
        editUsing: (TDEditorSpec topez: topez editorAspect: #'definitionList') ]