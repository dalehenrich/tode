menu actions
refreshProjectEntriesMenuAction: listElement selectionIndex: selectionIndex
  "refresh the unloaded project entries"

  projectTool projectRefresh: #(#'locked' #'unlocked' #'unloaded').
  listElement topez commitTransaction.
  ^ #'refreshView'