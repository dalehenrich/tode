instance creation
commandLine: commandLine redirectTarget: redirectTarget
  ^ self new
    commandLine: commandLine;
    redirectTarget: redirectTarget;
    yourself