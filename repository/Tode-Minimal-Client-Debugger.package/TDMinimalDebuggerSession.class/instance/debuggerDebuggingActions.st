debugger
debuggerDebuggingActions
	^ {(GLMGenericAction new
		action: [ self session resume ];
		icon: GLMUIThemeExtraIcons glamorousPlay;
		title: 'Proceed';
		showTitle;
		yourself).
	(GLMGenericAction new
		action: [ self session restart: self currentContext ];
		icon: GLMUIThemeExtraIcons glamorousRestart;
		title: 'Restart';
		showTitle;
		yourself).
	(GLMGenericAction new
		action: [ self session stepInto: self currentContext ];
		icon: GLMUIThemeExtraIcons glamorousInto;
		title: 'Into';
		showTitle;
		yourself).
	(GLMGenericAction new
		action: [ self session stepOver: self currentContext ];
		icon: GLMUIThemeExtraIcons glamorousOver;
		title: 'Over';
		showTitle;
		yourself).
	(GLMGenericAction new
		action: [ self session stepThrough: self currentContext ];
		icon: GLMUIThemeExtraIcons glamorousThrough;
		title: 'Through';
		showTitle;
		yourself)}