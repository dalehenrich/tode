menu actions - Search
browseReferencesToItInMyClassMenuAction: sourceElement selectedText: aVariableName
  ^ self
    browseReferencesMenuAction: sourceElement
    to: aVariableName
    inClass: self theClass