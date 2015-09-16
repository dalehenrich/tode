bu
buvalidateManPage
  ^ TDManPage
    commandName: 'validate'
    fromString:
      'NAME
  bu validate - Validate that backup file is readable

SYNOPSIS
  bu [--dir=<backup-directory>] validate [--snapshot] <backup-file>

DESCRIPTION
  Verify the readability of the specified bacup file.

  With no options specified, the backup file will be read from the directory 
  specified by the `bu directory` command. The default backup directory is named
  ''backups'' and is located in the $GEMSTONE_DATADIR.

  With the --dir option specified, the restore file will be read from the named
  directory.

  With the --snapshot option specified the <backup-file> in the snapshot directory
  will be validated.

EXAMPLES
  bu validate sample.dbf.gz
  bu --dir=/opt/gemstone/backups validate sample.dbf.gz
  bu validate --snapshot extent0.sample.dbf

SEE ALSO
  bu --help backup
  bu --help directory
  bu --help info
  bu --help list
'