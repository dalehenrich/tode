tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | currentFrame sourceEditorSpec contextEditorSpec sourceClientElement contextClientElement |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  self theStack navigateFrame: index.
  currentFrame := self theStack currentFrame.
  self
    homeMethod: currentFrame homeMethod;
    receiver: currentFrame frameSelf.
  sourceEditorSpec := (TDEditorSpec topez: self topez editorAspect: #'source')
    parentObject: listElement parent;
    windowId: sourceWindowId;
    yourself.
  contextEditorSpec := (TDEditorSpec topez: self topez editorAspect: #'contents')
    parentObject: listElement parent;
    windowId: contextWindowId;
    yourself.
  ^ sourceWindowId
    ifNil: [ 
      sourceWindowId := currentFrame editUsing: sourceEditorSpec.
      contextWindowId := currentFrame editUsing: contextEditorSpec.
      #'refreshList' ]
    ifNotNil: [ 
      sourceClientElement := currentFrame clientElementUsing: sourceEditorSpec.
      contextClientElement := currentFrame clientElementUsing: contextEditorSpec.
      STON
        toString:
          {#'editStonElement:'.
          sourceClientElement.
          #'editStonElement:'.
          contextClientElement.
          #'setList:'.
          (self frameList)} ]