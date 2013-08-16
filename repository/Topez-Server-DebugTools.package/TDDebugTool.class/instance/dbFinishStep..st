*topez-server-debugtools
dbFinishStep: node
  | frameIndex |
  frameIndex := 1.
  stackNode := node.
  self theStack navigateFrame: frameIndex.
  (self theStack currentFrame frameContents == nil
    or: [ 
      "needed for G/S 2.4 to recognize when process is no longer active .. may be nil"
      processTerminated == true ])
    ifTrue: [ ^ STON fromString: processResult ].
  self theStack
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'stack')
        parentObject: stackNode;
        windowId: stackWindowId;
        yourself).
  ^ topez currentNode