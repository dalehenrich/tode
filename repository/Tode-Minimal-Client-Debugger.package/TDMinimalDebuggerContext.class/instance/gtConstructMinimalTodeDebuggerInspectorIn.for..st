*Tode-Minimal-Client-Debugger
gtConstructMinimalTodeDebuggerInspectorIn: composite for: aDebugger
	^ composite
		custom:
			((Smalltalk at: #TDMinimalTodeObjectInspector) new
				debugger: aDebugger;
				startOn: self session contextClientElement)