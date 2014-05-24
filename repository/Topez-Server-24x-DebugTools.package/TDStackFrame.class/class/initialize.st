as yet unclassified
initialize
false ifTrue:  [ "don't think we need this puppy anymore"
  TDTopezServer
    registerBuilderClass: TDStackFrameNodeBuilder
      for: TDStackFrame
      aspect: #'view' ].
  TDTopezServer
    registerEditorClass: TDStackFrameContentsClientListElementBuilder
      for: TDStackFrame
      aspect: #'contents';
    registerEditorClass: TDStackFrameMethodElementBuilder
      for: TDStackFrame
      aspect: #'source'
