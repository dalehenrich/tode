menu support
executeMenuAction: aSymbol listIndex: selectionIndex

  ^ self topez
    executeMenuActionForClientListElement: self
    action: aSymbol 
    selectionIndex: selectionIndex