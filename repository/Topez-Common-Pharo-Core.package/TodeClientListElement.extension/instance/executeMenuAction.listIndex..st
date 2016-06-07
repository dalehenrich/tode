*Topez-Common-Pharo-Core
executeMenuAction: aSymbol listIndex: selectionIndex

  ^ self topez
    executeMenuActionForClientListElement: self
    action: aSymbol 
    selectionIndex: selectionIndex