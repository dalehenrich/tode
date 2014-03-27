menu actions
browseClass: sourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-b - browse class"

  | selection |
  selection := editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to.
  ^ self browseItMenuAction: sourceElement selectedText: selection