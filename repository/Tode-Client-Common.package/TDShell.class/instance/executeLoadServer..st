built-ins
executeLoadServer: command
    | options |
    command
      getOptsMixedLongShort:
        {#('help' $h #'none').
        #('scriptPath' nil #'required')}
      optionsAndArguments: [ :opts :args | options := opts ].
    options
      at: 'help'
      ifAbsent: [ ^ self topezClient loadTode: options ]
      ifPresent: [ :ignored | 
        ^ (TDMultiLineText new
          prompt: 'Help for ' , command command;
          template: 'NAME
    installServer - install tODE on the server
  
  SYNOPSIS
    loadServer [-h|--help]
    loadServer  [--scriptPath=<script-directory>]
  
  DESCRIPTION
     Load tODE into a $GEMSTONE/bin/extent0.seaside.dbf extent. The load involves the following steps:
      1. upgrade GLASS (file name `upgradeGLASS.ws`)
      2. load Metacello (file name `installMetacello.ws`)
      3. load GLASS1 (file name `installGLASS1.ws`)
      4. load Tode (file name `installTode.ws`)
    If tODE has already been installed, step 1 is skipped and the remaining steps are performed.
  
    For each of the steps, loadServer executes a Smalltalk script that is loaded from a file
    on disk. 
  
    With no arguments specified, each file will be located by looking for the file in the following directories:
       $GS_HOME/tode/sys/local/server/tode-scripts
       $GS_HOME/tode/sys/default/server/tode-scripts
  
    If --scriptPath is specified, then each of the files is expected to be found in that directory.
  
  EXAMPLES
    loadServer -h
    loadServer
    loadServer --scriptPath=/opt/git/tode/loadTode
  ') interact ]
