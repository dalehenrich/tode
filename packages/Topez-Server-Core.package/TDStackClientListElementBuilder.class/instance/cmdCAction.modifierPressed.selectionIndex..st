as yet unclassified
cmdCAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-c - copy object"

  | def method |
  self object navigateFrame: selectionIndex.
  method := self object currentFrame method.
  def := TDMethodDefinition className: method inClass name isMeta: method inClass isMeta selector: method selector.
  self objectClipboard: def.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (def label)}