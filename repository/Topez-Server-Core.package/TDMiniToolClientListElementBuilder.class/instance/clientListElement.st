accessing
clientListElement
  ^ super clientListElement
    beMultipleSelection: self beMultipleSelection;
    yourself