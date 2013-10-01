menu actions
copyObjectMenuAction: listElement selectionIndex: selectionIndex
  | def method |
  self object navigateFrame: selectionIndex.
  method := self object currentFrame method.
  def := TDMethodDefinition
    className: method inClass name
    isMeta: method inClass isMeta
    selector: method selector.
  self objectClipboard: def.
  listElement topez commitTransaction.
  ^ STON
    toString:
      {#'addToClipboard:'.
      (def label)}