as yet unclassified
deployManPage
  ^ 'NAME
  deploy - copy new packages in a configuration version to list of repositories

SYNOPSIS
  deploy <configuration> <version> <source-repository> <target-repository-list>

DESCRIPTION

  The `deploy` command is used to copy the package versions specified in <version>
  of <configuration> from the <source-repository> to the repositories in 
  <target-repository-list>. Only the package versions that are not present in the listed 
  repositories are copied.
'