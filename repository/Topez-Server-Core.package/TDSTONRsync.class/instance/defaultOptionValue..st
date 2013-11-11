options
defaultOptionValue: optionName
  | defaults |
  defaults := Dictionary new
    at: 'modify-window' put: 0;
    yourself.
  ^ defaults at: optionName ifAbsent: [  ]