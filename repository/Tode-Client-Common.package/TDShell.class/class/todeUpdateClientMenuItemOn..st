system menu
todeUpdateClientMenuItemOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Update client')
		parent: #Client;
		order: 9.0;
		action: [ 
					| shell |
					shell := self openSessionDescription: TDSessionDescription seaside evaluate: 'updateClient'.
					shell exit ]