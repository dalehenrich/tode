RTSpectrographExample new installTitle: 'RoassalVisualization' 
		code:
		'| b now |
	now := DateAndTime now.
	b := RTSpectrograph new.
	b objects: ((RTObject withAllSubclasses , TRObject withAllSubclasses) reverseSortedAs: #livingInDays).

	b highlight: [ :cls :livingDay | cls inheritsFrom: TRObject ] color: Color lightGreen.
	b highlight: [ :cls :livingDay | cls gotMethodOnDay: livingDay ].
	
	b popupText: [ :cls :age | cls name, ''  '', age printString , '' days old'' ].
	b lineBlock: [ :cls | 0 to: cls livingInDays ].
	
	b open.
	self halt.
	b view canvas'
	