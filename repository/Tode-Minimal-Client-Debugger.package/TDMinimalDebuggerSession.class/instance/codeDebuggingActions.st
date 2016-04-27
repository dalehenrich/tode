code
codeDebuggingActions
	^ {(GLMGenericAction new
		action: [ self session resume ];
		icon: GLMUIThemeExtraIcons glamorousPlay;
		title: 'Proceed';
		showTitle;
		yourself).}