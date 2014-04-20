*topez-server-24x-core
regexSendersOf: aRegex
  "Returns an Array of GsMethods that send a message matchint <aRegex>  "

  ^ self regexSendersOf: aRegex in: self classOrganizer classes