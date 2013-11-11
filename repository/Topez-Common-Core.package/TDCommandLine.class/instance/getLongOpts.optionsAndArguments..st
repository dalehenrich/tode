parsing
getLongOpts: longOptionSpec optionsAndArguments: optsAndArgsBlock
  ^ self
    getLongOpts: longOptionSpec
    short: Dictionary new
    optionsAndArguments: optsAndArgsBlock