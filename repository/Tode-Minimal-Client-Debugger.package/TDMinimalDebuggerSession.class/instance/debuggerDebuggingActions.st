debugger
debuggerDebuggingActions
	^ {(GLMGenericAction new
		action: [ self resume: self currentContext ];
		icon: GLMUIThemeExtraIcons glamorousPlay;
		title: 'Proceed';
		showTitle;
		yourself).
	(GLMGenericAction new
		action: [ self restart: self currentContext ];
		icon: GLMUIThemeExtraIcons glamorousRestart;
		title: 'Restart';
		showTitle;
		yourself).
	(GLMGenericAction new
		action: [ self stepInto: self currentContext ];
		icon: GLMUIThemeExtraIcons glamorousInto;
		title: 'Into';
		showTitle;
		yourself).
	(GLMGenericAction new
		action: [ self stepOver: self currentContext ];
		icon: GLMUIThemeExtraIcons glamorousOver;
		title: 'Over';
		showTitle;
		yourself).
	(GLMGenericAction new
		action: [ self stepThrough: self currentContext ];
		icon: GLMUIThemeExtraIcons glamorousThrough;
		title: 'Through';
		showTitle;
		yourself)}