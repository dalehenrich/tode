building
compose
	self when: GLMBrowserClosing send: #actOnBrowserClosing: to: self.
	self installDebuggingActionsIn: self.
	self tabulator
		with: [ :browser | 
			browser
				row: #stack span: 5;
				row: #code span: 6;
				row: #inspector span: 5.
			browser transmit
				fromOutsideEntityPort;
				to: #stack;
				andShow: [ :a | self stackFrameListIn: a ].
			browser transmit
				from: #stack port: #selection;
				to: #code port: #selection;
				when: [ :session | session notNil ];
				transformed: [ :session | self contextToSelectFrom: session ].
			browser transmit
				from: #stack port: #selection;
				to: #code;
				andShow: [ :composite :aContext | self methodCodeIn: composite forContext: aContext ].
			browser transmit
				from: #stack port: #selection;
				to: #inspector;
				andShow: [ :composite | 
					composite pager
						with: [ :b | 
							b fixedSizePanes: 2.
							b
								show: [ :a :each | 
									a dynamic
										display: [ :x | 
											GLMCompositePresentation new
												with: [ :d | each gtConstructMinimalTodeDebuggerInspectorIn: d for: self ] ] ] ] ] ]