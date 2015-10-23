as yet unclassified
breakremoteManPage
  | manPage |
  manPage := TDManPage
    commandName: 'remote'
    sourceMethod: self name asString , '>>breakremote'
    fromString:
      'NAME
  break remote - Enable/disable remote breakpoints

SYNOPSIS
  break remote [--enable] [--disable]

DESCRIPTION
  The `break remote` command allows you to enable and disable the remote breakpoint
  facility.

  With no options, the status of remote breakpoints is returned.

  With remote breakpoints enabled, setting a breakpoint in your development system,
  using the menu item or command (`break set`) will automatically set the breakpoint 
  in all of your external Seaside gems. When you clear the break (`break clear`), the
  remote breakpoint is cleared as well.

  When a breakpoint is encountered in the external Seaside gem, a continuation is 
  snapped off and the process is resumed...without the end user experience being 
  interrupted. The continuation can be debugged via the `ol view` command.

  Remote breakpoints are NOT individually enabled/disabled (i.e., `break enable` and
  `break disable` has no effect on remote breakpoints).

OPTIONS
  --enable
    Enable remote breakpoints.

  --disable
    Disable remote breakpoints.

EXAMPLES
  break --help remote

  break remote --enable
  break remote --disable

  break remote

SEE ALSO
  break --help set
  break --help clear
  ol --help
  ol --help view
'.
  ^ manPage