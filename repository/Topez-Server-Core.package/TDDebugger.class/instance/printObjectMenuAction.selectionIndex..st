actions
printObjectMenuAction: listElement selectionIndex: selectionIndex
  | currentFrame |
  currentFrame := self theStack currentFrame.
  currentFrame
    printUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'printer';
        yourself).
  ^ true