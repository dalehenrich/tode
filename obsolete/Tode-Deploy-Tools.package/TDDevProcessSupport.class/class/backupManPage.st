as yet unclassified
backupManPage
  ^ 'NAME
  backup - make system backup

SYNOPSIS
  backup

DESCRIPTION
  Runs GemStone backup into back file defined in the `./backupFile` node. 

  `./active` defines list of active projects used to create the `STATUS` report.

  Each active project node should contain a `STATUS` node. The project `STATUS` files
  are combined to product the backup `STATUS` node
'