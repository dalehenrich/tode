as yet unclassified
installOn: aTDTopezServer
  "builder:
	 #print   - textEditor view ... printString (default of edit command)
	 #view		- normal view (i.e., collection of associations for Dictionary)
	 #inspect - raw object/implementation view

   editor:
	 #edit		 - text code editor (falls back to #navigate)
	 #navigate - structural access via navigator
	 CUSTOM    - custom names for specialized window access"

  aTDTopezServer ensureChildrenExistIn: self commandPath.
  self
    installHalosOn: aTDTopezServer;
    yourself.
  super installOn: aTDTopezServer.
  self
    installExampleOn: aTDTopezServer;
    yourself.
  TDTopezServer
    registerBuilderClass: TDStackNodeBuilder for: TDStack aspect: #'view';
    registerEditorClass: TDStackClientListElementBuilder
      for: TDStack
      aspect: #'navigate'