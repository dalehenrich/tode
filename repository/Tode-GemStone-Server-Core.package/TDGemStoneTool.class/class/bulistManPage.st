bu
bulistManPage
  ^ TDManPage
    commandName: 'list'
    fromString:
      'NAME
  bu list - Display info about all backup and snapshot files

SYNOPSIS
  bu [--dir=<backup-directory>] list

DESCRIPTION
  Display information about each of the files in the backup directory:

    Last Restore: 17/04/2014 10:13:20 -- home.dbf (04/17/2014 14:14:41)
    Last Backup:  20/04/2014 10:16:10 -- wip.dbf
    Backups:
    14/04/2014 20:59:29 -- glass-1.0-beta.9.1.dbf
    15/04/2014 17:38:22 -- tode.dbf
    17/04/2014 12:12:59 -- seaside3.0.9.1.dbf
    17/04/2014 14:21:59 -- seaside3.0.10.dbf
    19/04/2014 20:51:15 -- home.dbf
    20/04/2014 10:16:10 -- wip.dbf
    Snapshots:
    15/04/2014 17:38:22 -- extent0.tode.dbf
    17/04/2014 12:12:59 -- extent0.seaside3.dbf

  Included in the information is the `Last Backup` and `Last Restore` times.

  The `Last Backup` is set as persistent state in the image _AFTER_ a backup 
  is performed.

  The `Last Restore` is set as persistent state in the image _AFTER_ a restore 
  from backup is performed. Note that the state is actually set by a call from
  the tode client, immediately after the restore is completed.

  With the --dir specified, the info for the files in that directory are 
  listed.
EXAMPLES
  bu list
  bu --dir=/opt/gemstone/backups list

SEE ALSO
  bu --help backup
  bu --help restore
  bu --help snapshot
'