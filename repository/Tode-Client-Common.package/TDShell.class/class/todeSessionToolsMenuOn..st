system menu
todeSessionToolsMenuOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Backups [bu]')
		parent: #Tools;
		order: 0.5;
		icon: Smalltalk ui icons smallExportIcon;
		target: self.
	(aBuilder item: #'List backups')
		parent: #'Backups [bu]';
		order: 1;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool bu list' ] ].
	(aBuilder item: #'Backup to...')
		parent: #'Backups [bu]';
		order: 2;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool bu backup' ] ].
	(aBuilder item: #'Restore from...')
		parent: #'Backups [bu]';
		order: 2;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool bu restore' ] ].
	(aBuilder item: #'Breakpoints [break]')
		parent: #Tools;
		order: 0.5;
		target: self;
		icon: Smalltalk ui icons breakpointIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'break list' ] ].
	(aBuilder item: #'Mark For Collect [gs]')
		parent: #Tools;
		order: 0.5;
		target: self;
		icon: Smalltalk ui icons smallDeleteIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gs mfc' ] ].
	(aBuilder item: #'Object Log [ol]')
		parent: #Tools;
		order: 1.0;
		target: self;
		icon: Smalltalk ui icons smallObjectsIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'ol view' ] ].
	(aBuilder item: #'Packages [mc]')
		parent: #Tools;
		order: 2.0;
		target: self;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'mc list' ] ].
	(aBuilder item: #'Processes [ps]')
		parent: #Tools;
		order: 3.0;
		target: self;
		icon: Smalltalk ui icons processBrowserIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'ps list' ] ].
	(aBuilder item: #'Profile [pf]')
		parent: #Tools;
		order: 3.5;
		icon: Smalltalk ui icons smallProfileIcon;
		target: self.
	(aBuilder item: #start)
		parent: #'Profile [pf]';
		order: 1.0;
		target: self;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'pf start' ] ].
	(aBuilder item: #stop)
		parent: #'Profile [pf]';
		order: 2.0;
		target: self;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'pf view' ] ].
	(aBuilder item: #'Project List [project]')
		parent: #Tools;
		order: 4.0;
		target: self;
		icon: Smalltalk ui icons configIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'project list' ] ].
	(aBuilder item: #'Repositories [mr]')
		parent: #Tools;
		order: 5.0;
		target: self;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'mr list' ] ].
	(aBuilder item: #'Test Runner [test]')
		parent: #Tools;
		order: 6.0;
		target: self;
		icon: Smalltalk ui icons testRunnerIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'test image' ] ].
	(aBuilder item: #'Workspace [ws]')
		parent: #Tools;
		order: 7.0;
		target: self;
		icon: Smalltalk ui icons workspaceIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'ws' ] ].
	(aBuilder item: #'Find [browse]')
		parent: #Tools;
		order: 0.5;
		target: self;
		icon: Smalltalk ui icons smallFindIcon.
	(aBuilder item: #'Class...')
		parent: #'Find [browse]';
		order: 1;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find class' ] ].
	(aBuilder item: #'Hierarchy Browser...')
		order: 2;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find hierarchy' ] ].
	(aBuilder item: #'Class References...')
		order: 3;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find references' ] ].
	(aBuilder item: #'Method...')
		order: 4;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find method' ] ].
	(aBuilder item: #'Senders...')
		order: 5;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find senders' ] ].
	(aBuilder item: #'String...')
		order: 6;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find string' ] ]