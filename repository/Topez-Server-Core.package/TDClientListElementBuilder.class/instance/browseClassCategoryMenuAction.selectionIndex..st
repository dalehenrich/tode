menu actions
browseClassCategoryMenuAction: listElement selectionIndex: selectionIndex
  | cls browseTool |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  browseTool := listElement topez toolInstanceFor: 'browse'.
  browseTool
    browseCategories:
      {(TDClassCategoryDefinition new categoryName: cls category)}
    label: 'Classes in ' , cls name , ' category'.
  ^ true