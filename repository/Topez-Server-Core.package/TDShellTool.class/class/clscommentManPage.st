cls
clscommentManPage
  | manPage |
  manPage := TDManPage
    commandName: 'comment'
    fromString:
      'NAME
  cls comment - View and define the class comment

SYNOPSIS
  cls comment ( <class-name> | @<class-path> )...

DESCRIPTION
  The `cls comment` brings up an editor window on the class comment.

EXAMPLES
  cls comment ClassA ClassB
  cls comment @/home/tode/classA
'.
  ^ manPage