system menu
todeRefreshMenuMenuItemOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Refresh tODE menu')
		parent: #tODE;
		order: 15.0;
		action: [ self resetWorldMenu ];
		withSeparatorAfter