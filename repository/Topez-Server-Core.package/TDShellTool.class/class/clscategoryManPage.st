cls
clscategoryManPage
  | manPage |
  manPage := TDManPage
    commandName: 'category'
    fromString:
      'NAME
  cls category - Move class to a new category

SYNOPSIS
  cls category <class-category> ( <class-name> | @<class-path> )...

DESCRIPTION
  The `cls category` moves the specified classes to the nnew class category.

EXAMPLES
  cls --help category
  cls category Topez-Server-Core TDShellTool TDStandardTool
  cls category Topez-Server-Core @/home/tode/shellToolClass TDStandardTool
'.
  ^ manPage