menu actions
browseClassReferencesMenuAction: listElement
  | cls aVariableOrClassName |
  aVariableOrClassName := self theBehavior theNonMetaClass name asString.
  ^ self browseReferencesMenuAction: listElement className: aVariableOrClassName