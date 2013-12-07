parsing
getOptsLongFor: aStream longOptionSpec: longOptionSpec shortOptionAliases: shortOptionAliases do: optionBlock nonOptionsDo: nonOptionBlock
  ^ self new
    stream: aStream;
    getOptsLong: longOptionSpec
      short: shortOptionAliases
      do: optionBlock
      nonOptionsDo: nonOptionBlock