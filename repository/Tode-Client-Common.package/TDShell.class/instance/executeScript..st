built-ins
executeScript: command
	| options |
	Transcript
		cr;
		show: 'TDShell>>executeScript [0]'.
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('script' nil #required).
			#('list' nil #optional)}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			options
				at: 'script'
				ifPresent: [ :filename | 
					| commands filepath |
					Transcript
						cr;
						show: 'executeScript [1]: ' , filename.
					filepath := filename.
					(filename beginsWith: '/')
						ifFalse: [ 
							Transcript
								cr;
								show: 'executeScript [2]: '.
							filepath := (TDShell clientScriptsHome: self stoneName) , filename ].
					Transcript
						cr;
						show: 'executeScript [3]: ' , filepath.
					FileStream readOnlyFileNamed: filepath do: [ :fileStream | commands := fileStream contents ].
					Transcript
						cr;
						show: 'executeScript [4]: ' , commands.
					^ self evaluate: commands ].
			options
				at: 'list'
				ifPresent: [ :dirname | 
					| dir fileNames dirPath |
					dirPath := dirname.
					dirPath ifNil: [ dirPath := TDShell clientScriptsHome: self stoneName ].
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
  script --script=installTode
  script --list' ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  script - run sequence of commands from client

SYNOPSIS
  script [-h|--help] [--script=<script-path>] [--list[=<script-dir>]]

DESCRIPTION
  Executes scripts stored in a directory on the client. Useful for scripts involving
  installation of tODE or that may do one or more `logout` commands.
																																					   With the --script option, the commands in the specified file are executed. If the 
  <script-path> is a relative path, the path is appended to TDShell 
  class>>clientScriptsHome

  With the --list option, the files in the specified directory are listed. If the
  <script-dir> is not specified, the files in TDShell class>>clientScriptsHome are
  listed.

EXAMPLES
  script -h
  script --list
  script --list=/opt/git/todeHome/client/scripts
  script --script=installTode
  script --script=/opt/git/todeHome/client/scripts/installTode
') interact ]