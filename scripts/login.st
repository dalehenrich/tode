| desc session |
desc := OGStandardSessionDescription new
	name: 'r_gs64stone';
	stoneHost: 'foos';
	stoneName: 'r_gs64stone';
	gemHost: 'foos';
	netLDI: 'r_gs64ldi';
	userId: 'DataCurator';
	password: 'swordfish';
	backupDirectory: '/export/foos2/users/dhenrich/3.0/r_gss64bit/backups/';
	yourself.
session := GciSession new
		gemNRS: desc gemNRS;
		stoneNRS: desc stoneNRS;
		userID: desc userId;
		yourself.

		(session 
			login: desc password
			osUser: (desc isGuest ifTrue: [''] ifFalse: [ desc osUserId ])
			osPassword: (desc isGuest ifTrue: [''] ifFalse: [ desc osPassword ]))
				ifFalse: [ | gciError messageText |
					gciError := session getAndClearLastError.
					messageText := gciError message.
					session := nil.
					^Error signal: messageText, ' For further information about login failures, check the gem log file' ].
Transcript cr; show: 'Successful login: ', session printString.
session logout.
	
