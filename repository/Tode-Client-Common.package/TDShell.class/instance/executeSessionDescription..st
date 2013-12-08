session description builtin
executeSessionDescription: command
	| options arguments |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('edit' $e #none).
			#('netldi' nil #required).
			#('version' nil #required).
			#('stoneName' nil #required)}
		optionsAndArguments: [ :opts :args | 
			options := opts.
			arguments := args ].
	options
		at: 'help'
		ifAbsent: [ 
			options
				at: 'edit'
				ifPresent: [ :ignored | self editSessionDescription ]
				ifAbsent: [ self updateSessionDescription: options ] ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  sessionDesc - set session description parameters

SYNOPSIS
  sessionDesc -h|--help
  sessionDesc -e|--edit
  sessionDesc [--netldi=<netldi-name>] [--stoneName=<stone-name>] \
              [--serverHost=<hostname-or-ip-address>] \
              [--version=<gemstone-version>] 

DESCRIPTION
  With no options specified, resets the session descripton gciLibraryName to match the current
  platform: linux, mac, or windows.
  
  With -e option specified, brings up an editor dialog on the entire sessions description and you
  can change any of the fields.

  With one or more of the  --netldi, --stoneName, --stoneHost, or --version options set, 
  updates the corresponding session description with the new value. Note that the 
  <gemstone-version> specified should refer to the version field of the libgcirpc library name. 

EXAMPLES
  sessionDescription -h
  sessionDescription
  sessionDescription --netldi=50377 --stoneName=seaside --stoneHost=192.168.1.3

') interact ]