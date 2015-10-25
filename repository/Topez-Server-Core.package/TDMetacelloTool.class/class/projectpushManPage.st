project
projectpushManPage
  | manPage |
  manPage := TDManPage
    commandName: 'push'
    sourceMethod: self name asString , '>>projectpush'
    fromString:
      'NAME
  project push - Execute a `git push` for the project repository (github only)

SYNOPSIS
  project push [--remote=<git-remote-name>] ( <project-name> | @<project-reference> )

DESCRIPTION
  With no options, a `git push` is executed for project git repository atainst the
  <git-remote-name> remote repository. By default <git-remote-name> is `origin`.

OPTIONS
  --remote=<git-remote-name>
    Execute the `git push` against the <git-remote-name> remote repository.

EXAMPLES
  project push Seaside3
  project push --remote=gsdevkit Seaside3
'.
  ^ manPage