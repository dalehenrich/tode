accessing
serverTodeHome
	serverTodeHome ifNil: [ serverTodeHome := '/opt/git/webEditionHome/dev/tode/home' ].
	^ serverTodeHome