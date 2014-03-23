built-ins
executeScript: command
	| options |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('script' nil #required).
			#('list' nil #required)}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			options
				at: 'script'
				ifPresent: [ :filepath | 
					| commands |
					FileStream readOnlyFileNamed: [ :fileStream | commands := fileStream contents ].
					^ self evaluate: commands ].
			options
				at: 'list'
				ifPresent: [ :dirPath | 
					| dir fileNames |
					dir := MCFileTreeFileUtils current directoryFromPath: dirPath.
					fileNames := WriteStream on: String new.
					dir entries
						do: [ :entry | 
							fileNames
								nextPutAll: entry name;
								cr ].
					^ fileNames contents ].
			^ 'must specify an option:
  script -h
  script --script=/opt/git/todeHome/client/scripts/installTode
  script --list=/opt/git/todeHome/client/scripts' ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  script - run sequence of commands from client

SYNOPSIS
  script [-h|--help] [--script=<script-path>] [--list=<script-dir>]

DESCRIPTION
  Executes scripts stored in a directory on the client. Useful for scripts involving
  installation of tODE or that may do one or more `logout` commands.
																																					   With the --script option, the commands in the specified file are executed.

  With the --list option, the files in the specified directory are listed.

EXAMPLES
  script -h
  script --script=/opt/git/todeHome/client/scripts/installTode
  script --list=/opt/git/todeHome/client/scripts
') interact ]