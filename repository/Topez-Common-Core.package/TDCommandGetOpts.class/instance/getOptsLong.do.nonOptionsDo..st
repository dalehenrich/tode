parsing
getOptsLong: optionSpecs do: optionBlock nonOptionsDo: nonOptionBlock
  "optionSpecs is expected to be a dictionary whose keys are the option names and whose values are: #none, #required, or #optional; to indicate whether or not option arguments are expected"

  self
    getOptsLong: optionSpecs
    short: ''
    do: optionBlock
    nonOptionsDo: nonOptionBlock