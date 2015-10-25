project
projectpullManPage
  | manPage |
  manPage := TDManPage
    commandName: 'pull'
    sourceMethod: self name asString , '>>projectpull'
    fromString:
      'NAME
  project pull - Execute a `git pull` for the project repository (github only)

SYNOPSIS
  project pull [--remote=<git-remote-name>] ( <project-name> | @<project-reference> )

DESCRIPTION
  With no options, a `git pull` is executed for project git repository atainst the
  <git-remote-name> remote repository. By default <git-remote-name> is `origin`.

OPTIONS
  --remote=<git-remote-name>
    Execute the `git pull` against the <git-remote-name> remote repository.

EXAMPLES
  project pull Seaside3
  project pull --remote=gsdevkit Seaside3
'.
  ^ manPage