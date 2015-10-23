project
projectlogManPage
  | manPage |
  manPage := TDManPage
    commandName: 'log'
    sourceMethod: self name asString , ' class>>projectlogManPage'
    fromString:
      'NAME
  project log - Browse commit log for the Metacello project (git only)

SYNOPSIS
  project log [--limit=<max-commit-log-entries>] <project-name>

DESCRIPTION

OPTIONS
  --limit =<max-commit-log-entries>
    Number of log entries will be limited to the specified number. the default limit
    is 100.

EXAMPLES
  project log Tode
  project log -limit=100 Tode

'.
  ^ manPage