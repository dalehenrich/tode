parsing
getOptsFor: aStream spec: optionSpec do: optionBlock nonOptionsDo: nonOptionBlock
  ^ self new
    stream: aStream;
    getOpts: optionSpec do: optionBlock nonOptionsDo: nonOptionBlock