bu
buinfoManPage
  ^ TDManPage
    commandName: 'info'
    fromString:
      'NAME
  info - Display info about a particular backup

SYNOPSIS
  bu [--dir=<backup-directory>] info <backup-file>

DESCRIPTION
  Display information from the GemStone copydbf command about the backup file:

    Source file: /export/foos2/users/dhenrich/3.0/j_gss64bit/backups//wip.dbf
       File type: backup  fileId: 0 
       ByteOrder: Intel (LSB first)  compatibilityLevel: 844 
       The file was created at: 04/20/2014 10:16:08 PDT.
       Full backup started from checkpoint at: 04/20/2014 10:16:08 PDT.
       Oldest tranlog needed for restore is fileId 8 ( tranlog8.dbf ).
       Backup was created by GemStone Version: 3.2.0 .

  With the --dir option specified, the restore file will be read from the named
  directory.

EXAMPLES
  bu info seaside.dbf; print
  bu info --dir=/opt/gemstone/backups seaside.dbf; print

SEE ALSO
  bu --help backup
  bu --help restore
'