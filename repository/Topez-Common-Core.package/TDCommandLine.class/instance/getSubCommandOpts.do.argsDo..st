obsolete
getSubCommandOpts: optionSpec do: optionBlock argsDo: argBlock
  | optionStream optionString |
  optionString := commandLine
    copyFrom: self subCommandArgPtr
    to: commandLine size.
  optionStream := ReadStream on: optionString.
  TDCommandGetOpts
    getOptsFor: optionStream
    spec: optionSpec
    do: optionBlock
    nonOptionsDo: argBlock