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
  self installExampleOn: aTDTopezServer.
  super installOn: aTDTopezServer.
  TDTopezServer
    registerBuilderClass: TDTestResultNodeBuilder
    for: TestResult
    aspect: #'view'