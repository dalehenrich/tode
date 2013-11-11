options
optionValue: optionName
  ^ self rsyncOptions
    at: optionName
    ifAbsent: [ self defaultOptionValue: optionName ]