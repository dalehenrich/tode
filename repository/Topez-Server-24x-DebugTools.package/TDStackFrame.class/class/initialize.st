as yet unclassified
initialize
  TDTopezServer
    registerBuilderClass: TDStackFrameNodeBuilder
      for: TDStackFrame
      aspect: #'view';
    registerEditorClass: TDStackFrameContentsClientListElementBuilder
      for: TDStackFrame
      aspect: #'contents';
    registerEditorClass: TDStackFrameMethodElementBuilder
      for: TDStackFrame
      aspect: #'source'