system menu
todeRefreshMenuMenuItemOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Refresh tODE menu')
		parent: #System;
		order: 15.0;
		action: [ self resetWorldMenu ];
		withSeparatorAfter