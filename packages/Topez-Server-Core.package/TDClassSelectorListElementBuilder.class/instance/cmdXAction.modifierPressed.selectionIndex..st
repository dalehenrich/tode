as yet unclassified
cmdXAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-x - cut object"

  | itemAttribute classAttributes className selector isMeta def |
  itemAttribute := listElement itemCache at: selectionIndex.
  classAttributes := itemAttribute object.
  className := classAttributes at: 1.
  selector := classAttributes at: 3.
  isMeta := classAttributes at: 2.
  def := TDMethodDefinition
    className: className
    isMeta: isMeta
    selector: selector.
  self objectClipboard: def.
  def removeFromSystem.
  listElement topez commitTransaction.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (def label)}