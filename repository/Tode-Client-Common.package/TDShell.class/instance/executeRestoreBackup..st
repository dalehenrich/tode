evaluator engine
executeRestoreBackup: command
	| options arguments |
	command
		getOptsMixedLongShort: {#('help' $h #none)}
		optionsAndArguments: [ :opts :args | 
			options := opts.
			arguments := args ].
	options
		at: 'help'
		ifAbsent: [ ^ self topezClient restoreBackupFrom: (arguments at: 1) ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  restoreBackup - restore from backup on server

SYNOPSIS
  restoreBackup [-h|--help] <server-backup-path>

DESCRIPTION
  Performs a restore from backup on server using the given <server-backup-path> without first													   installing tODE.

EXAMPLES
  restoreBackup /export/foos2/users/dhenrich/3.0/l_gss64bit/backups/wip.dbf	

') interact ]