as yet unclassified
renameclass
  "rename class <old-name> <new-name>"

  | oldName newName |
  oldName := tokens at: 2.
  newName := tokens at: 3.
  self
    browseMethods:
      (self
        findReferences:
          {#'ignored'.
          oldName}).
  ^ self renameclass: oldName to: newName