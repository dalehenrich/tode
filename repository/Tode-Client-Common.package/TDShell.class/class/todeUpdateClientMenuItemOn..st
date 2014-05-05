system menu
todeUpdateClientMenuItemOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Update tODE client')
		parent: #tODE;
		order: 9.0;
		action: [ 
					| shell |
					shell := self openSessionDescription: OGCustomSessionDescription seaside evaluate: 'script --script=updateClient'.
					shell exit ]