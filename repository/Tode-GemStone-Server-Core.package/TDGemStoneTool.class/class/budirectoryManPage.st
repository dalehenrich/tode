bu
budirectoryManPage
  ^ TDManPage
    commandName: 'directory'
    fromString:
      'NAME
  bu directory - Define default backup directory

SYNOPSIS
  bu directory [<backup-directory>]

DESCRIPTION
  Set the default backup directory.

  With no arguments specified, the current backup directory is listed.

  If an argument is specified, the backup directory is set to the new
  location.

  The default backup directory is named ''backups'' and is located in the 
  $GEMSTONE_DATADIR.

EXAMPLES
  bu --help
  bu directory
  bu directory $GS_HOME/gemstone/stones/dev/backups

SEE ALSO
  bu --help backup
  bu --help restore
'