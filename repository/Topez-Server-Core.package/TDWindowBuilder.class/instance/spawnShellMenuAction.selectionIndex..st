menu actions
spawnShellMenuAction: listElement selectionIndex: selectionIndex
  ^ STON
    toUTF8EncodedString:
      {#'spawnShell:'.
      listElement}