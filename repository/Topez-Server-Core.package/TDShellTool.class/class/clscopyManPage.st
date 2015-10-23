manPages
clscopyManPage
  | manPage |
  manPage := TDManPage
    commandName: 'copy'
    sourceMethod: self name asString , ' class>>clscopyManPage'
    fromString:
      'NAME
  cls copy - Make a copy of a class

SYNOPSIS
  cls copy [--category=<class-category>] ( <class-name> | @<class-path> ) 
           <new-class-name>

DESCRIPTION
  The `cls copy` command copies the specified class a class with the new class name.

  If the --category option is present, create the new class in the specified category.

EXAMPLES
  cls --help copy
  cls copy ClassA ClassB
  cls copy --category=Some-Classes ClassA ClassB
  cls copy @/home/tode/classA ClassB
'.
  ^ manPage