*Topez-Common-Pharo-Core
executeMenuAction: aSymbol selectedText: selection

  ^ self topez
    executeMenuActionForClientSourceElement: self
    action: aSymbol 
    selectedText: selection