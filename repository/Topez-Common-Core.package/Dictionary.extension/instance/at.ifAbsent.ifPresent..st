*topez-common-core
at: key ifAbsent: absentBlock ifPresent: oneArgBlock
  "for options handling in scripts it is convenient to position the 
   ifAbsent: keyword first"

  ^ self at: key ifPresent: oneArgBlock ifAbsent: absentBlock