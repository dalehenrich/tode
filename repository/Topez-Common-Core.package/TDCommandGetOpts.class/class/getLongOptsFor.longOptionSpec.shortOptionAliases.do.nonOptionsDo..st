parsing
getLongOptsFor: aStream longOptionSpec: longOptionSpec shortOptionAliases: shortOptionAliases do: optionBlock nonOptionsDo: nonOptionBlock
  ^ self new
    stream: aStream;
    getLongOpts: longOptionSpec
      short: shortOptionAliases
      do: optionBlock
      nonOptionsDo: nonOptionBlock