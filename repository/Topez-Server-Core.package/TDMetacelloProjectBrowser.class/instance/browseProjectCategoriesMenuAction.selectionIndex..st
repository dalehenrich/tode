menu actions
browseProjectCategoriesMenuAction: listElement selectionIndex: selectionIndex
  | registration block |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  block := [ 
  | defs classDefs |
  classDefs := registration classDefinitions.
  defs := (classDefs
    collect: [ :each | TDClassCategoryDefinition new categoryName: each classCategory ])
    asSet.
  defs := defs asArray sort: [ :a :b | a label <= b label ].
  TDUserDefinitionList new
    definitionList: defs;
    windowLocation: #'classCategories';
    yourself ].
  self browseTool
    browseDefinitionListBlock: block
    selectedIndex: 0
    label: 'Categories in ' , registration projectName.
  ^ true