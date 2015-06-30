menu actions
spawnShellMenuAction: listElement selectionIndex: selectionIndex
  ^ listElement objectSerializer
    toString:
      {#'spawnShell:'.
      listElement}