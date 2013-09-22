as yet unclassified
cmdTAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-t - toggle list categories"

  self listCategories: self listCategories not.
  ^ #'refreshList'