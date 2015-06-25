menu actions
cloneWindowMenuAction: listElement selectionIndex: selectionIndex
  ^ STON
    toUTF8EncodedString:
      {#'spawnWindow:'.
      (listElement copyForSpawn)}