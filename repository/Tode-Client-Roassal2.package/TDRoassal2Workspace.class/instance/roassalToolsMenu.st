as yet unclassified
roassalToolsMenu
	
	self rtView openInWindowSized: 1000@1000 titled: 'Roassal tools'.
	
	"GTInspector openOn: self rtView." 
	
	tools := RTAbstractTool subclasses collect: [:t | t withWorkspace: self view: self rtView].
	self menu.