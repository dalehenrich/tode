built-ins
help
	^self openWorkspace: '
Thank you for trying tODE.
--------------------------

Before getting started, you should clone a copy of the todeHome repository 
from github:

  git clone git@github.com:dalehenrich/todeHome.git

You will want to have a clone of todeHome on both the server machine and your 
client machine, if they are on different hosts.  You should also plan on 
"taking ownership" of the todeHome repository as you progress in your usage of
tODE you will be customizing the contents of this repository quite a bit.

For the purposes of this document we will assume that the location of the 
clone on both machines is:

  /opt/git/todeHome

If you have cloned the repository to a different location, the you should 
execute the following in a Pharo workspace:

  TDShell todeHome: ''<path-to-todeHome>''.

I. Start your stone and netldi
------------------------------
   If you do not already have a stone running, you should start your stone and
   the netldi process. 

   If you''re not sure how to start a stone, please follow the instructions 
   (https://github.com/dalehenrich/tode/blob/master/README.md) for getting 
   started with GemStone. 

II. Define a session description
-------------------------------
   Use the following expressions to define and test your session description
   (this expression can also be found in the `session setup` workspace:

     (OGCustomSessionDescription new
       name: ''glass'';
       gemstoneVersion: ''3.2.0'';
       adornmentColor: nil;
       stoneHost: ''localhost'';
       stoneName: ''seaside'';
       gemHost: ''localhost'';
       netLDI: ''50377'';
       gemTask: ''gemnetobject'';
       userId: ''DataCurator'';
       password: ''swordfish'';
       osUserId: '''';
       osPassword: '''';
       backupDirectory: '''';
       dataDirectory: '''';
       yourself) exportTo: TDShell todeSysLocalSessionDescriptionPath.
     TDShell testLogin: ''glass''.

   Pay special attention to the `gemstoneVersion`, `stoneHost`, `gemHost`, 
   `stoneName` and `netLDI` fields. The `gemstoneVersion` string should have a
   minimum of 3 fields, i.e., ''3.2.0''. Normally the `stoneHost` and `gemHost`
   will be the same. Use the port number for your netldi process for the 
   `netLDI` field. 

   If you have a session description that you are using with GemTools you can 
   copy over the corresponding fields.

   The #exportTo: message, saves the session description to a location in 
   todeHome. The #testLogin: message attempts a login using the namedsession
   description. The result of the #testLogin: message provides clues that can be
   used to fine tune the definition of the session description.

   When you see a message like the following, you have successfully connected to 
   your stone:

      Stone            : !@foos#server!j_gs64stone
      Stone host       : foos
      GemStone version : 3.2.0
      cpu kind         : x86_64
      GLASS version    : >=1.0-beta.9.1 [ConfigurationOfGLASS]
      Metacello version: >=1.0-beta.32.1 [ConfigurationOfMetacello]
      GLASS1 not installed
      Tode not installed

   Once you''ve created your own session description, you can use the following 
   expression to launch your tODE console from a Pharo workspace:
 
     TDShell open: ''glass''

   Finally, when you''ve settled on an acceptable session description, it is a
   good idea to commit your changes to your todeHome repository.


III. Install/Update tODE on server
---------------------------------
   The `updateServer` command will install/upgrade tODE on your server. 

   If you have a todeHome repository on your client machine (the machine upon 
   which you are running Pharo) you can use the following command to 
   install/upgrade tODE on the server:

     updateServer --clientScriptPath=/opt/git/todeHome/server/scripts

   The standard scripts are based on loading code from github, but you chould be
   able to customize the scripts to reference local copies of the various 
   projects as needed. 

   All of the scripts are executed on the server, so any file system paths 
   should be relative to the server file system.

   After installation is complete, the `testLogin` should return something like 
   the following:

      Stone            : !@foos#server!j_gs64stone
      Stone host       : foos
      GemStone version : 3.2.0
      cpu kind         : x86_64
      GLASS version    : >=1.0-beta.9.1 [ConfigurationOfGLASS]
      Metacello version: >=1.0-beta.32.1 [ConfigurationOfMetacello]
      GLASS1:
             repository: /opt/git/glass/repository
      Tode:
             repository: /opt/git/tode/repository

   For additional information about using the `updateServer` command use the 
   `--help` option:

     updateServer --help

IV. Backup and restore
---------------------
   Once you have installed tODE on the server, you can start using tODE, by 
   simply typing commands at the command prompt in the console window. 

   The first command that you should use after finishing your install is the 
   `bu` command:

     bu backup tode.dbf

   The above command makes a backup of your repository in a file named 
   `tode.dbf` in the backup directory specified in your session description. 
   If no directory is specified in your session description, the backup is 
   stored in the `$GEMSTONE/seaside/data/backups` directory.

   You can restore from a backup with this command:

     bu restore tode.dbf

   The `bu` command is executed by tODE code running in the server. For 
   additional information about the server-side `bu` command use the `--help` 
   option or the `man` command:

     man bu
     bu --help

   If tODE has not been installed yet, you can restore from backup by using 
   the `restoreBackup` command, which is a client-side built-in command. For 
   additional information about using the `restoreBackup`, use the `--help` 
   option:

     restoreBackup --help

   For a list of the client-side built-in commands use the `builtIns` command 
   (also a client-side built-in).

V. Mounting /home
---------------------
   Objects in tODE are shared by serializing the objects to disk using STON 
   (https://github.com/glassdb/ston). One gains access to these shared objects 
   on disk, by using the `mount` command. The todeHome repository comes with a 
   pre-defined set of objects that can be accessed by executing the following 
   commands:

     mount /opt/git/todeHome/home /
     logout
     bu backup home.dbf

   The `logout` command is necessary because `/home` is a special directory 
   structure that needs to be reset after being redefined and `logout` is a 
   temporary workaround. The `bu` command is used to make a backup of the 
   repository now that you''ve defined `/home`.

VI. Client-side scripts
------------------------
   If you find that you are frequently executing sequences of commands 
   involving the logout command or client built-in commands, you can execute 
   client-side scripts using the`script` command. 

   For example, the following sequence of commands is a convenent script for 
   updating both the client and server:

     updateClient --clientRepo=filetree:///opt/git/tode/repository
     updateServer --clientScriptPath=/opt/git/todeHome/server/scripts
     bu backup tode.dbf

   With the `script` command you can save the above commands in a file named
   `/opt/git/todeHome/client/scripts/updateTode` and invoke the script using 
   the following:

     script --script=/opt/git/todeHome/client/scripts/updateTode

   If you use a relative path for the script, the argument will be appended 
   to `TDShell clientScriptHome` which is based upon `TDShell todeHome` which 
   you should have already defined:

     script --script=updateTode

' label: 'Help for tODE'.
