*topez-server-debugtools
dbFinishStep: node
  | frameIndex |
  frameIndex := 1.
  stackNode := node.
  self dbStack navigateFrame: frameIndex.
  (self dbStack currentFrame frameContents == nil
    or: [ 
      "needed for G/S 2.4 to recognize when process is no longer active"
      processTerminated ])
    ifTrue: [ ^ STON fromString: processResult ].
  self dbStack
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'stack')
        parentObject: stackNode;
        yourself).
  ^ topez currentNode