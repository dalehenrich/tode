as yet unclassified
reconcileManPage
  ^ 'NAME
  reconcile - reconcile config version against git repo

SYNOPSIS
  reconcile <configuration> <version> <repository>
            <configuration> <version> @<repo-path>

DESCRIPTION

  The `reconcile` command is used to update the package versions for the
  version <version> of the configuration <configuration> from the git repository
  <git-repository>.

  If there are any new packages in the <git-repository> that are not listed in the 
  <configuration> <version> or there are packages listed in the <configuration> 
  <version> that are no longer in the <git-repository> an error is signalled.

  The <configuration> package is not committed.
'