tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | currentFrame sourceEditorSpec sourceClientElement enabled disabled |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  self theStack navigateFrame: index.
  currentFrame := self theStack currentFrame.
  self
    homeMethodOop: currentFrame homeMethodOop;
    receiverOop: currentFrame frameSelfOop.
  sourceEditorSpec := (TDEditorSpec topez: self topez editorAspect: #'source')
    parentObject: listElement parent;
    windowId: sourceWindowId;
    yourself.
  enabled := disabled := {#'debuggingProcess'}.
  debuggingProcess
    ifTrue: [ disabled := {} ]
    ifFalse: [ enabled := {} ].
  ^ sourceWindowId
    ifNil: [ 
      sourceWindowId := currentFrame editUsing: sourceEditorSpec.
      self objectSerializer
        toString:
          {#'setMenuCategories:'.
          enabled.
          #'clearMenuCategories:'.
          disabled.
          #'refreshList'.
          nil} ]
    ifNotNil: [ 
      sourceClientElement := currentFrame clientElementUsing: sourceEditorSpec.
      self objectSerializer
        toString:
          {#'setMenuCategories:'.
          enabled.
          #'clearMenuCategories:'.
          disabled.
          #'editStonElement:'.
          sourceClientElement.
          #'setList:'.
          (self frameList)} ]