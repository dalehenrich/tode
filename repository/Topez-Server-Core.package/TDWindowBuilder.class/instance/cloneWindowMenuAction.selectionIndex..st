menu actions
cloneWindowMenuAction: listElement selectionIndex: selectionIndex
  ^ STON
    toString:
      {#'spawnWindow:'.
      (listElement copyForSpawn)}