private
selectFrame: currentFrame
  self
    homeMethod: currentFrame homeMethod;
    receiver: currentFrame receiver.
  sourceWindowId := currentFrame
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'source')
        windowId: sourceWindowId;
        yourself).
  contextWindowId := currentFrame
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'contents')
        windowId: contextWindowId;
        yourself)