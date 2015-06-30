menu actions
cloneWindowMenuAction: listElement selectionIndex: selectionIndex
  ^ listElement objectSerializer
    toString:
      {#'spawnWindow:'.
      (listElement copyForSpawn)}