bu
budirectoryManPage
  ^ TDManPage
    commandName: 'directory'
    sourceMethod: self name asString , '>>budirectory'
    fromString:
      'NAME
  bu directory - Define default backup directory

SYNOPSIS
  bu directory [--snapshot] [<backup-directory>]

DESCRIPTION
  Set the default backup directory.

  With no arguments specified, the current backup directory is listed.

  If an argument is specified, the backup directory is set to the new
  location.

  The default backup directory is named ''backups'' and is located in the 
  $GEMSTONE_DATADIR.

  If the --snapshot option is specified, then the snapshot directory is
  set or displayed.

EXAMPLES
  bu --help
  bu directory
  bu directory /opt/gemstone/backups
  bu directory --snapshot /opt/gemstone/snapshots

SEE ALSO
  bu --help backup
  bu --help restore
'