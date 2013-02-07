as yet unclassified
cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-b - browse class"

  {(TDClassDefinition className: self object dotSelfObject class theNonMetaClass name)}
    edit: listElement topez
    aspect: #'definitionList'.
  ^ true