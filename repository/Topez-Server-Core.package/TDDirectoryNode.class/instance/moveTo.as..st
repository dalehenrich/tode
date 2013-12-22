as yet unclassified
moveTo: parentNode as: newName
  "rename receiver to newName and relocate in parentNode"

  ^ parentNode moveDirectoryNode: self as: newName