commands
breakremote
  "
  break remote [--enable] [--disable]
"

  self
    getSubcommandOptsMixedLongShort:
      {#('enable' nil #'none').
      #('disable' nil #'none')}.
  subOptions
    at: 'enable'
    ifPresent: [ :ignored | ^ self class enableRemoteBreakpoints ]
    ifAbsent: [ 
      subOptions
        at: 'disable'
        ifPresent: [ :ignored | ^ self class disableRemoteBreakpoints ] ].
  ^ self class remoteBreakpointsEnabled