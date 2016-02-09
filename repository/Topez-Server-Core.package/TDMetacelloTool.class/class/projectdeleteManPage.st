project
projectdeleteManPage
  | manPage |
  manPage := TDManPage
    commandName: 'delete'
    sourceMethod: self name asString , '>>projectdelete'
    fromString:
      'NAME
  project delete - Delete project artifacts from image and disk

SYNOPSIS
  project delete <project-name>

DESCRIPTION
  This is a somewhat experimental command that is primarily intended to undo the effects of the `project
  new` command. 
  1. Remove project entry is deleted from the currently registered project entry location.
  2. The packages associated with the project are unloaded from the image in reverse load order, with the
     BaselineOf and/or ConfigurationOf package unloaded last.
  3. If the project is a git-based project, then the local git clone is deleted, using the registered location 
     of the repository for the project. If the local git clone directory does not exist, no error is thrown.
  4. Unregister the project.

OPTIONS
EXAMPLES
  project delete Foo
'.
  ^ manPage