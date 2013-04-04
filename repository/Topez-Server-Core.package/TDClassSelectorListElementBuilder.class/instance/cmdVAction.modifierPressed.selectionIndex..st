as yet unclassified
cmdVAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-v - paste object"

  | def behaviorDef result |
  def := self objectClipboard.
  behaviorDef := TDBehaviorDefinition
    className: self theClass name
    isMeta: self theBehavior isMeta.
  result := behaviorDef pasteTDDefinition: def.
  listElement topez commitTransaction.
  ^ result