private
getCommandOpts: optionSpec do: optionBlock argsDo: argBlock
  | optionStream optionString |
  optionString := commandLine copyFrom: self commandArgPtr to: commandLine size.
  optionStream := ReadStream on: optionString.
  TDCommandGetOpts
    getOptsFor: optionStream
    spec: optionSpec
    do: optionBlock
    nonOptionsDo: argBlock