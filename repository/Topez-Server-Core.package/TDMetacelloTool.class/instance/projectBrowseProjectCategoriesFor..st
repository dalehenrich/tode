project api
projectBrowseProjectCategoriesFor: registration
  | block |
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
    label: 'Categories in ' , registration projectName