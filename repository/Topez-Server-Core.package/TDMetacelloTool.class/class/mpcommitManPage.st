commands
mpcommitManPage
  | manPage |
  manPage := TDManPage
    commandName: 'commit'
    fromString:
      'NAME
  mp commit - Commit the Metacello project

SYNOPSIS
  mp commit [--push] [--message=<message-ref>] <project-name>

DESCRIPTION

EXAMPLES
  mp commit --message=@commitMessage Tode
  mp commit --message=`initial commit` Tode
'.
  ^ manPage