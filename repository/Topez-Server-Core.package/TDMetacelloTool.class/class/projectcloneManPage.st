project
projectcloneManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clone'
    fromString:
      'NAME
  project clone - Clone repository (github only)

SYNOPSIS
  project clone [--https] [--shared|--stone] [--gitRoot=<git-root-dir>] ( <project-name> | @<project-reference> )
DESCRIPTION
  With no options, the github project <project-name> is cloned using an SSH url 
  (git@github.com) into the $GS_HOME/gemstone/stones/<stone-name>/git directory. A
  new project entry is created in the /sys/stone/projects directory node.

OPTIONS
  --https
    With the `--https option, use an HTTPS url (https://github.com/) when cloning the 
    repository. If you choose this option, many of the git-based `project list` menu 
    items may not work, unless you arrange for credentials to be automatically supplied (See
    https://github.com/dalehenrich/tode/blob/master/docs/releaseNotes/releaseNotes0.1.0.md#git-credentials-and-tode
   for more information).

  --gitRoot=<git-root-dir>
    Clone the github repository into the given <git-root-dir> (overriding the 
    --local|--stone defaults). Project entry is still saved based on 
    --local|--stone option.

  --stone|--shared
    The `--stone` option is the default. Clone the project into the
    $GS_HOME/gemstone/stones/<stone-name>/git directory and save project entry in
    /sys/stone/projects directory node.

    With the `--shared` option set, save the project entry into the /sys/local/projects 
    directory node. The repository is cloned into the $GS_HOME/shared/repos directory 
    by default, but the system default can be changed on a stone by stone basis by 
    setting the `serverGitRoot` field in the stone session description.

EXAMPLES
  project clone Seaside3
  project clone --https Seaside3
  project clone --gitRoot=/opt/git Seaside3
  project clone --shared Seaside3
  project clone --stone Seaside3
'.
  ^ manPage