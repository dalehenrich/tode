tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | currentFrame sourceEditorSpec contextEditorSpec sourceClientElement contextClientElement enabled disabled |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  self theStack navigateFrame: index.
  currentFrame := self theStack currentFrame.
  self
    homeMethod: currentFrame homeMethod;
    theSelf: currentFrame theSelf.
  sourceEditorSpec := (TDEditorSpec topez: self topez editorAspect: #'source')
    parentObject: listElement parent;
    windowId: sourceWindowId;
    yourself.
  contextEditorSpec := (TDEditorSpec topez: self topez editorAspect: #'contents')
    parentObject: listElement parent;
    windowId: contextWindowId;
    yourself.
  enabled := disabled := {#'debuggingProcess'}.
  debuggingProcess
    ifTrue: [ disabled := {} ]
    ifFalse: [ enabled := {} ].
  ^ sourceWindowId
    ifNil: [ 
      sourceWindowId := currentFrame editUsing: sourceEditorSpec.
      contextWindowId := currentFrame editUsing: contextEditorSpec.
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
      contextClientElement := currentFrame clientElementUsing: contextEditorSpec.
      self objectSerializer
        toString:
          {#'setMenuCategories:'.
          enabled.
          #'clearMenuCategories:'.
          disabled.
          #'editStonElement:'.
          sourceClientElement.
          #'editStonElement:'.
          contextClientElement.
          #'setList:'.
          (self frameList)} ]