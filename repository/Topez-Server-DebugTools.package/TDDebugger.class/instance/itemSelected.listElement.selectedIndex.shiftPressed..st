tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | currentFrame |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  self theStack navigateFrame: index.
  currentFrame := self theStack currentFrame.
  self
    homeMethod: currentFrame homeMethod;
    receiver: currentFrame receiver.
  sourceWindowId := currentFrame
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'source')
        parentObject: listElement parent;
        windowId: sourceWindowId;
        yourself).
  contextWindowId := currentFrame
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'contents')
        parentObject: listElement parent;
        windowId: contextWindowId;
        yourself).
  ^ #'refreshList'