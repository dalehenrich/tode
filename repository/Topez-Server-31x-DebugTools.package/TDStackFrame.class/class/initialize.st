as yet unclassified
initialize
  "builder:
	 #view		- normal view (i.e., collection of associations for Dictionary)
	 #inspect - raw object/implementation view

   editor:
	 #edit		 - text code editor (falls back to #navigate)
	 #navigate - structural access via navigator
	 CUSTOM    - custom names for specialized window access"

  false
    ifTrue: [ 
      "don't think this puppy needed anymore ... "
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