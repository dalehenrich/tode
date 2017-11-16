initialization
initialize
  "builder:
	 #view		- normal view (i.e., collection of associations for Dictionary)
	 #inspect - raw object/implementation view

   editor:
	 #edit		 - text code editor (falls back to #navigate)
	 #navigate - structural access via navigator
	 CUSTOM    - custom names for specialized window access"

  TDTopezServer
    registerEditorClass: TDStackFrameContentsClientListElementBuilder
      for: self
      aspect: #'contents';
    registerEditorClass: TDStackFrameMethodElementBuilder
      for: self
      aspect: #'source'