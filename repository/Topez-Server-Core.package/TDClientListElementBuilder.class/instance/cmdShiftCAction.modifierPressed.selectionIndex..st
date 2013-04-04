as yet unclassified
cmdShiftCAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-C - spawn window"

  ^ STON
    toString:
      {#'spawnWindow:'.
      (listElement copyForSpawn)}