toolbuilder
buildTextMorph 
	| morph |
	
	morph := TDRoassalPluggableTextMorph 
					on: self 
					text: #contents 
					accept: #acceptContents:
					readSelection: nil 
					menu: #codePaneMenu:.
	
	morph font: StandardFonts codeFont.
	morph styler workspace: self.
	
	^ morph