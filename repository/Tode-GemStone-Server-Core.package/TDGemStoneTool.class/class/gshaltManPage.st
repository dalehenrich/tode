gs
gshaltManPage
  | manPage |
  manPage := TDManPage
    commandName: 'halt'
    sourceMethod: self name asString , '>>gshalt'
    fromString:
      'NAME
  gs halt - Halt on AlmostOutOfMemory exception

SYNOPSIS
  gs halt -m|--almostOutOfMemory=<percent>

DESCRIPTION
  Halt on AlmostOutOfMemory exception invocation.

OPTIONS
  -m|--almostOutOfMemory=<percent>
    <percent> specifies the percentage of Temporary Object Cache at which the 
    AlmostOutOfMemory admonition is signalled

EXAMPLES
  gs halt -m=65
  gs halt -almostOutOfMemory=65
'.
  ^ manPage