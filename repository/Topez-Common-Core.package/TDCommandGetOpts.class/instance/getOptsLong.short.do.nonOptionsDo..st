parsing
getOptsLong: optionSpecs short: shortOptionAliases do: optionBlock nonOptionsDo: nonOptionBlock
  "optionSpecs is expected to be a dictionary whose keys are the option names and whose values are: #none, #required, or #optional; to indicate whether or not option arguments are expected"

  "shortOptionAliases is expected to be a dictionary whose keys are option characters and whose values are option names (i.e., keys into the optionSpecs dicationary)"

  self
    parseLongOptions: optionSpecs
    shortOptions: shortOptionAliases
    do: optionBlock
    nonOptionsDo: nonOptionBlock.
  self parseNonOptionArgs: nonOptionBlock