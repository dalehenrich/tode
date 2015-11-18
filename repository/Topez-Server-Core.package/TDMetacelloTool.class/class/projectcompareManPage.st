project
projectcompareManPage
  | manPage |
  manPage := TDManPage
    commandName: 'compare'
    sourceMethod: self name asString , '>>projectcompare'
    fromString:
      'NAME
  project compare -  View differences between repository versions (git only)

SYNOPSIS
  project compare [--commit=<source-commitish>] <project-name>

DESCRIPTION
  Compare the currently loaded SHA for the git-based <project-name> with the given <source-commitish>. If no 
  <source-commitish> is specified, then the SHA of the git clone is used.

EXAMPLES
  project compare Tode
  project compare --commit=dd9c564 Tode
'.
  ^ manPage