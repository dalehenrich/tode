menu actions - Search
browseReferencesToItMenuAction: sourceElement selectedText: aVariableOrClassName
  "browse references <aVariableOrClassName>"

  ^ self
    browseReferencesMenuAction: sourceElement
    to: aVariableOrClassName
    inClass: self theClass