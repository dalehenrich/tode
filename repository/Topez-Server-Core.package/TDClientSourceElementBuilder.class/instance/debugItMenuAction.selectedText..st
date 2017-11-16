menu actions
debugItMenuAction: listElement selectedText: selectedString
  (listElement topez applicationEnvironmentFor: self doItContext)
    debug: selectedString
    in: self doItContext
    literalVars: self doItLiteralArray.
  ^ true