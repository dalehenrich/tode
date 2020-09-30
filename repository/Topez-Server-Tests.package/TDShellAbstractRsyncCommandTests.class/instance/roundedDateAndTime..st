private
roundedDateAndTime: aDateAndTime
  "with 3.6.0, beRounded is no longer a valid message ... replace it's use in these tests with equivalent functionality"

  ^ DateAndTime
    posixSeconds: aDateAndTime asPosixSeconds rounded
    offset: aDateAndTime offset