as yet unclassified
performOnServer: command
  | result |
  result := System performOnServer: command.
  Transcript
    cr;
    show: command printString;
    cr;
    show: result.
  ^ result