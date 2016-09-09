tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | currentFrame enabled disabled contextEditorSpec contextClientElement |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  self theStack navigateFrame: index.
  currentFrame := self theStack currentFrame.
  self
    homeMethodOop: currentFrame homeMethodOop;
    receiverOop: currentFrame frameSelfOop.
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
      contextClientElement := currentFrame clientElementUsing: contextEditorSpec.
      self objectSerializer
        toString:
          {#'setMenuCategories:'.
          enabled.
          #'clearMenuCategories:'.
          disabled.
          #'editStonElement:'.
          contextClientElement.
          #'setList:'.
          (self frameList)} ]