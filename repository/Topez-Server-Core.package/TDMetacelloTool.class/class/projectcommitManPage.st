project
projectcommitManPage
  | manPage |
  manPage := TDManPage
    commandName: 'commit'
    fromString:
      'NAME
  project commit - Commit the Metacello project

SYNOPSIS
  project commit [--git] --message=<message-ref> <project-name>

DESCRIPTION

EXAMPLES
  project commit --message=@commitMessage Tode
  project commit --message=`initial commit` Tode
  project commit --git --message=@commitMessage Tode
'.
  ^ manPage