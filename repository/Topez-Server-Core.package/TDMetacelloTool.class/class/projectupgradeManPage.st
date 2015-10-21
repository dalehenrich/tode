project
projectupgradeManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clone'
    fromString:
      'NAME
  project upgrade - Perform a post GsDevKit upgrade installation

SYNOPSIS
  project upgrade --install=<project-install-command> [<class-needing-initialization> ...]

DESCRIPTION
  After a GsDevKit upgrade where the system has been upgraded to a new version of GemStone, 
  it is necessary to re-install all methods, packages and baselines. Since Monticello is 
  being loaded into a system that has already been fully initialized, it isn''t always
  necessary to re-run class initializations when re-compiling methods, however in some cases
  it is actually destructive to re-run initializations (Seaside, for example).

  By using the `project upgrade` command, class initializers will not be run blocked while 
  executing the <project-install-command>, except for those classes in the list of 
  <class-needing-initialization>.

  If you are upgrading a project for the first time, you should use `project upgrade` with
  an empty list of <class-needing-initialization> and if you find through post-upgrade 
  testing that a particular class needs to be re-initialize put it on the list and rerun
  the upgrade.

EXAMPLES
  project upgrade --install=/home/seaside/installSeaside
  project upgrade --install=/home/seaside/installSeaside MyClassThatNeedsInitialieAfterUpgrade
'.
  ^ manPage