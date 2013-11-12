private
getCommandLongOpts: optionSpec short: shortOptionAliases do: optionBlock argsDo: argBlock
  | optionStream optionString |
  optionString := commandLine copyFrom: self commandArgPtr to: commandLine size.
  optionStream := ReadStream on: optionString.
  TDCommandGetOpts
    getOptsLongFor: optionStream
    longOptionSpec: optionSpec
    shortOptionAliases: shortOptionAliases
    do: optionBlock
    nonOptionsDo: argBlock