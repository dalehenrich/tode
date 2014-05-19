menu actions
browseProjectCategoriesMenuAction: listElement selectionIndex: selectionIndex
  | registration block |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  block := [ 
  | version defs |
  version := registration projectSpec version.
  defs := version packages
    collect: [ :pkg | TDClassCategoryDefinition new categoryName: pkg name ].
  defs := defs reject: [ :def | def classDefinitions isEmpty ].
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