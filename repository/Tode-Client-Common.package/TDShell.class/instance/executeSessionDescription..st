built-ins
executeSessionDescription: command
	| options |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('edit' nil #none).
			#('export' nil #required).
			#('import' nil #required).
			#('list' nil #none)}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			options
				at: 'import'
				ifPresent: [ :importPath | 
					sessionDescription := TDSessionDescription importFrom: importPath.
					shellWindow setLabel: self windowLabel.
					self topezClient sessionDescription: sessionDescription ].
			options at: 'edit' ifPresent: [ :ignored | self editSessionDescription ].
			options
				at: 'export'
				ifPresent: [ :exportPath | 
					self editSessionDescription.
					self sessionDescription exportTo: exportPath ].
			^ self displaySessionDescription	"default or --list" ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  sessionDesc - set session description parameters

SYNOPSIS
  sessionDescription [-h|--help] [--export=<file-path>] [--import=<file-path>] [--edit] [--list]

DESCRIPTION
  With --list or no options specified, lists the current session description.
 
  With --edit options specified, the current session is brought up in an editor
  and you can make the necessary changes.
  
  With --export option specified, the current session description is brought up
  an editor and exported in STON format at the specified <file-path>.

  With --import option specified, the current session description is replaced by
  the session description specified by <file-path>.

EXAMPLES
  sessionDescription -h
  sessionDescription --list
  sessionDescription --edit
  sessionDescription --export=/opt/git/todeHome/client/descriptions/glass
  sessionDescription --import=/opt/git/todeHome/client/descriptions/glass
  sessionDescription

') interact ]