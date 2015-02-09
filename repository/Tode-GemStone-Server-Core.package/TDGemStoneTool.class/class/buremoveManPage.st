bu
buremoveManPage
  ^ TDManPage
    commandName: 'remove'
    fromString:
      'NAME
  bu remove - Remove backup file from backup directory

SYNOPSIS
  bu [--dir=<backup-directory>] remove <backup-file>

DESCRIPTION
  Remove the specified backup file from the backup directory.

  With no options specified, the backup file will be found in the directory 
  specified by the `bu directory` command. The default backup directory is named
  ''backups'' and is located in the $GEMSTONE_DATADIR.

  With the --dir option specified, the backup file will be stored in the named
  directory.

EXAMPLES
  bu --help reemove
  bu remove seaside.dbf
  bu --dir=/opt/gemstone/backups remove seaside.dbf

SEE ALSO
  bu --help directory
  bu --help info
  bu --help list
  bu --help restore
'