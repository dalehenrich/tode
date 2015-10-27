project
projectcloneManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clone'
    sourceMethod: self name asString , '>>projectclone'
    fromString:
      'NAME
  project clone - Clone repository (github only)

SYNOPSIS
  project clone [--https] [--shared|--stone] [--gitRoot=<git-root-dir>] \
                [--checkout=<branch-tag-SHA>] ( <project-name> | @<project-reference> ) 
  project clone [--https] [--gitRoot=<git-root-dir>] [--checkout=<branch-tag-SHA>]
                --projects --github=<github-user-name>/<github-repository>

DESCRIPTION
  With no options, the github project <project-name> is cloned using an SSH url 
  (git@github.com) into the $GS_HOME/gemstone/stones/<stone-name>/git directory. A
  new project entry is created in the /sys/stone/projects directory node.

  The new project entry is `locked` in the image, to guarantee that the clone will
  be used moving forward.

  If the project was already loaded in the image (from github), the loaded packages 
  are remapped to reference exclusively the new repository.

  If the --projects option is specified, then the github project specified by the 
  --github option is cloned to $Gs_HOME/projects and no project entries are changed.
  This set of options is provided to make it possible to clone generic github 
  projects into $GS_HOME.

OPTIONS
  Common Options
  --------------
    --checkout=<branch-tag-SHA>
      With the `--checkout` option, the given <branch-tag-SHA> is checked out once the clone
      is complete.

    --https
      With the `--https option, use an HTTPS url (https://github.com/) when cloning the 
      repository. If you choose this option, many of the git-based `project list` menu 
      items may not work, unless you arrange for credentials to be automatically supplied (See
    https://github.com/dalehenrich/tode/blob/master/docs/releaseNotes/releaseNotes0.1.0.md#git-credentials-and-tode
     for more information).

  Project Entry Options
  ---------------------
    --stone|--shared
      The `--stone` option is the default. Clone the project into the
      $GS_HOME/gemstone/stones/<stone-name>/git directory and save project entry in
      /sys/stone/projects directory node.

      With the `--shared` option set, save the project entry into the /sys/local/projects 
      directory node. The repository is cloned into the $GS_HOME/shared/repos directory 
      by default, but the system default can be changed on a stone by stone basis by 
      setting the `serverGitRoot` field in the stone session description.

    --gitRoot=<git-root-dir>
      Clone the github repository into the given <git-root-dir>, overriding the default clone 
      location associated with the --shared or --stone option. The project entry location is
      not affected.

  GitHub Project Options
  ----------------------
    --github=<github-user-name>/<github-repository>
      Clone the given Github project using either an https clone url 
      (https://github.com/<github-user-name>/<github-repository>.git) or an ssh clone url
      (git@github.com:<github-user-name>/<github-repository>.git).

    --projects
      With the --project option, the github specified project will be cloned into $GS_HOME/projects.

    --gitRoot=<git-root-dir>
      Clone the github project repository into the given <git-root-dir>, overriding the default clone 
      location: $GS_HOME.

EXAMPLES
  project clone Seaside3
  project clone --https Seaside3
  project clone --gitRoot=/opt/git Seaside3
  project clone --shared Seaside3
  project clone --shared --checkout=gs_master Seaside3
  project clone --stone Seaside3

  project clone --https --checkout=master --projects --github=GsDevKit/GsDevKit_seaside31
'.
  ^ manPage