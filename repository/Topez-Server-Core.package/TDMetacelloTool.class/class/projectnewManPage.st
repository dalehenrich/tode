project
projectnewManPage
  | manPage |
  manPage := TDManPage
    commandName: 'new'
    sourceMethod: self name asString , '>>projectnew'
    fromString:
      'NAME
  project new - Create a new project: BaselineOf, package, git repository

SYNOPSIS
  project new [--stone | --local | --gitRoot=<git-root-dir>] \
              [--package=<package-name>] [--class] <project-name>
DESCRIPTION
  With no options, creates a new project entry; a `BaselineOf<project-name>` 
  class in a package of the same name; a package named `<project-name>-Core`; 
  a git repository located in a directory named 
  `$GS_HOME/shared/repos/<project-name>`.

EXAMPLES
  project new Foo
  project new --class Foo
  project new --stone Foo
  project new --gitRoot $Gs_HOME/sys/local/repos Foo
'.
  ^ manPage