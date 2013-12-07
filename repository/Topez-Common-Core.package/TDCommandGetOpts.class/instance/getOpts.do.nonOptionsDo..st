parsing
getOpts: optionSpec do: optionBlock nonOptionsDo: nonOptionBlock
  | optionSpecs |
  optionSpecs := self parseOptionSpec: optionSpec.
  self skipWhiteSpace.
  self
    parseOptions: optionSpecs
    expectDash: true
    do: optionBlock
    nonOptionsDo: nonOptionBlock.
  self parseNonOptionArgs: nonOptionBlock