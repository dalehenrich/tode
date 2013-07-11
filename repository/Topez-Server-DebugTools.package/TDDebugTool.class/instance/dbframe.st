as yet unclassified
dbframe
  | frameIndex |
  stackNode := self defaultHomeNode.
  frameIndex := tokens size > 1
    ifTrue: [ (tokens at: 2) asNumber ]
    ifFalse: [ self theStack currentFrame frameIndex ].
  self theStack navigateFrame: frameIndex.
  self theStack
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'stack')
        parentObject: stackNode;
        yourself).
  ^ topez currentNode