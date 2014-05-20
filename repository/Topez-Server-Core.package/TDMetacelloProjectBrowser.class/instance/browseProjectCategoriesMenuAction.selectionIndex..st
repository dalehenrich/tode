menu actions
browseProjectCategoriesMenuAction: listElement selectionIndex: selectionIndex
  | registration block |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  block := [ 
  | version defs classDefs categories |
  classDefs := {(TDClassDefinition className: registration projectSpec className)}.
  classDefs
    addAll:
      (TDConfigurationDefinition new projectSpec: registration projectSpec)
        classDefinitions.
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