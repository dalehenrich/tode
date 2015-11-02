built-ins
executeScript: command
	| options arguments |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('edit' nil #none).
			#('list' nil #optional).
			#('script' nil #required)}
		optionsAndArguments: [ :opts :args | 
			options := opts.
			arguments := args ].
	options
		at: 'script'
		ifAbsent: [ 
			"backwards compat for `script --script=<script-path>` form"
			arguments size = 1
				ifTrue: [ options at: 'script' put: (arguments at: 1) ] ].
	options
		at: 'help'
		ifAbsent: [ 
			options
				at: 'script'
				ifPresent: [ :filename | 
					| commands filepath |
					filepath := filename.
					(filename beginsWith: '/')
						ifFalse: [ filepath := TDShell lookupClientScripts: filename stoneName: self stoneName ].
					FileStream readOnlyFileNamed: filepath do: [ :fileStream | commands := fileStream contents ].
					options
						at: 'edit'
						ifPresent: [ :ignored | 
							self openWorkspace: commands styling: false label: filepath.
							^ '' ]
						ifAbsent: [ ^ self evaluate: commands ] ]
				ifAbsent: [ 
					options
						at: 'list'
						ifPresent: [ :dirname | 
							| files fileNames |
							files := dirname
								ifNotNil: [ dirname asFileReference files ]
								ifNil: [ TDShell clientScriptsFiles: self stoneName ].
							fileNames := WriteStream on: String new.
							files
								do: [ :fileRef | 
									fileNames
										nextPutAll: fileRef basename;
										cr ].
							^ fileNames contents ] ].
			^ 'must specify an option or argument:
  script -h
  script loadTode
  script --list' ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  script - run sequence of commands from client

SYNOPSIS
  script [-h|--help] ( [--edit ] <script-path> | --list[=<script-dir>] )

DESCRIPTION
  Executes scripts stored in a directory on the client. Useful for scripts involving
  installation of tODE or that may do one or more `logout` commands.
																																					   With no options, the commands in the <script-path> file are executed. If the 
  <<script-path> is a relative path, the path is appended to TDShell 
  class>>clientScriptsHome.

  With the --edit option, a workspace is brought up on the contents of the <script-path>.
  file.

  With the --list option, the files in the specified directory are listed. If the
  <script-dir> is not specified, the files in TDShell class>>clientScriptsHome are
  listed.

EXAMPLES
  script -h
  script --list
  script --list=/opt/git/todeHome/client/scripts
  script loadTode
  script --edit loadTode
  script /opt/git/todeHome/client/scripts/loadTode
') interact ]