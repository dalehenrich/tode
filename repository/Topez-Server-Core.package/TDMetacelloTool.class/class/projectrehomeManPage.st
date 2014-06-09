project
projectrehomeManPage
  | manPage |
  manPage := TDManPage
    commandName: 'rehome'
    fromString:
      'NAME
  project rehome - Point package repository groups for project to new repository

SYNOPSIS
  project rehome [--repo=<repository-description>] 
                 [--no-config] <project-name>
DESCRIPTION
  If you have `unregistered` a loaded project and then do a `load` from a different
  repository, the `project list` will reference the new repository, but
  the repository group for many of the packages in the project will
  still reference the original repository (from which the package was originally 
  loaded).

  The `rehome` command resets the repository group for each of the packages in the 
  project to reference only the given repository.

  If the <repository-description> is not specifed the project repository is used.

OPTIONS
  --no-config
    Do change the repository group for the configuration package. Often the 
    configuration is in a different repository than the project packages.

EXAMPLES
  project rehome
'.
  ^ manPage