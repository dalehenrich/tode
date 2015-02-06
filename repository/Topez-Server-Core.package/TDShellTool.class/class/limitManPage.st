as yet unclassified
limitManPage
  ^ 'NAME
  limit - control char, list, and oops display limits

SYNOPSIS
  limit <command> [command-options]

DESCRIPTION
  limit autoCommit [true|false]
  limit autoMigrate [true|false]
  limit chars [<item-count>]
  limit format [true|false]
  limit list [<item-count>]
  limit oops [true|false]
  limit protocol [true|false]

EXAMPLES
  limit autoCommit
  limit autoCommit true
  limit autoCommit false

  limit autoMigrate
  limit autoMigrate true
  limit autoMigrate false

  limit chars
  limit chars 140

  limit format
  limit format true
  limit format false

  limit list
  limit list 140

  limit oops
  limit oops true
  limit oops false

  limit protocol
  limit protocol true
  limit protocol false

'