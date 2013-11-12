parsing
getOptsLong: longOptionSpec optionsAndArguments: optsAndArgsBlock
  ^ self
    getOptsLong: longOptionSpec
    short: Dictionary new
    optionsAndArguments: optsAndArgsBlock