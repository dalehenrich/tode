constructors
gtConstructMinimalTodeDebuggerInspectorIn: composite for: aDebugger
	^ composite
		custom:
			((Smalltalk at: #TDMinimalTodeRawObjectInspector) new
				debugger: aDebugger;
				startOn: self session contextClientElement)