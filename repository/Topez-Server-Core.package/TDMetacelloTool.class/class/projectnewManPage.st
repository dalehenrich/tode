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
  project new [--force] [--stone | --local | --gitRoot=<git-root-dir>] \
              [--package=<package-name>] [--class] <project-name>
DESCRIPTION
  1. Create a new project entry in either 
     $GS_HOME/sys/local/server/projects/<project-name>.ston (--local option 
     which is the default) or $GS_HOME/sys/stones/<stone-name>/<project-name>.ston 
     (--stone option).
  2. A `BaselineOf<project-name>`class.
  3. A package named `BaselineOf<project-name>` that contains the class 
     `BaselineOf<project-name>`.
  4. An empty package named `<project-name>-Core`.
  5. With the --class option, a class named `<project-name>. The class is put
     into the package `<project-name>-Core`.
  6. A git repository located in a directory named 
    `$GS_HOME/shared/repos/<project-name>`.
  7. After creating all of the packages and the git repository, the project is
     saved to the git repository.

  With the --force option, if any class, package or git repository is found to exist is
  deleted and then re-created.

EXAMPLES
  project new Foo
  project new --class Foo
  project new --stone Foo
  project new --gitRoot $Gs_HOME/sys/local/repos Foo
  project new --force --class Foo
'.
  ^ manPage