building
compose
	self when: GLMBrowserClosing send: #'actOnBrowserClosing:' to: self.
	self tabulator
		with: [ :browser | 
			browser
				row: #stack;
				row: #code span: 2;
				row: #inspector.
			browser transmit
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
				andShow: [ :composite | self inspectorIn: composite ] ]