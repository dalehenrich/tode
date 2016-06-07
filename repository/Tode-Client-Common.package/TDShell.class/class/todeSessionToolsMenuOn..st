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
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool bu backup' batchMode: true ] ].
	(aBuilder item: #'Restore from...')
		parent: #'Backups [bu]';
		order: 2;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool bu restore' batchMode: true ] ].
	(aBuilder item: #'Validate...')
		parent: #'Backups [bu]';
		order: 3;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool bu validate' batchMode: true ] ].
	(aBuilder item: #'Breakpoints [break]')
		parent: #Tools;
		order: 0.5;
		target: self;
		icon: Smalltalk ui icons breakpointIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'break list' batchMode: true ] ].
	(aBuilder item: #'Mark For Collect [gs]')
		parent: #Tools;
		order: 0.5;
		target: self;
		icon: Smalltalk ui icons smallDeleteIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gs mfc' batchMode: true ] ].
	(aBuilder item: #'Object Log [ol]')
		parent: #Tools;
		order: 1.0;
		target: self;
		icon: Smalltalk ui icons smallObjectsIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'ol view' batchMode: true ] ].
	(aBuilder item: #'Packages [mc]')
		parent: #Tools;
		order: 2.0;
		target: self;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'mc list' batchMode: true ] ].
	(aBuilder item: #'Processes [ps]')
		parent: #Tools;
		order: 3.0;
		target: self;
		icon: Smalltalk ui icons processBrowserIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'ps list' batchMode: true ] ].
	(aBuilder item: #'Profile [pf]')
		parent: #Tools;
		order: 3.5;
		icon: Smalltalk ui icons smallProfileIcon;
		target: self.
	(aBuilder item: #start)
		parent: #'Profile [pf]';
		order: 1.0;
		target: self;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'pf start' batchMode: true ] ].
	(aBuilder item: #stop)
		parent: #'Profile [pf]';
		order: 2.0;
		target: self;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'pf view' batchMode: true ] ].
	(aBuilder item: #'Project List [project]')
		parent: #Tools;
		order: 4.0;
		target: self;
		icon: Smalltalk ui icons configIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'project list' batchMode: true ] ].
	(aBuilder item: #'Repositories [mr]')
		parent: #Tools;
		order: 5.0;
		target: self;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'mr list' batchMode: true ] ].
	(aBuilder item: #'Test Runner [test]')
		parent: #Tools;
		order: 6.0;
		target: self;
		icon: Smalltalk ui icons testRunnerIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'test image' batchMode: true ] ].
	(aBuilder item: #'Workspace [ws]')
		parent: #Tools;
		order: 7.0;
		target: self;
		icon: Smalltalk ui icons workspaceIcon;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'ws' batchMode: true ] ].
	(aBuilder item: #'Find [browse]')
		parent: #Tools;
		order: 0.5;
		target: self;
		icon: Smalltalk ui icons smallFindIcon.
	(aBuilder item: #'Class...')
		parent: #'Find [browse]';
		order: 1;
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find class' batchMode: true ] ].
	(aBuilder item: #'Hierarchy Browser...')
		order: 2;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find hierarchy' batchMode: true ] ].
	(aBuilder item: #'Class References...')
		order: 3;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find references' batchMode: true ] ].
	(aBuilder item: #'Method...')
		order: 4;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find method' batchMode: true ] ].
	(aBuilder item: #'Senders...')
		order: 5;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find senders' batchMode: true ] ].
	(aBuilder item: #'String...')
		order: 6;
		parent: #'Find [browse]';
		action: [ currentShell ifNotNil: [ currentShell evaluate: 'gemtool find string' batchMode: true ] ]