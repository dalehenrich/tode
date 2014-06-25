menu action specs
methodMenuActionSpec
  ^ {#('browse full' $B #'browseFullClassMenuAction:selectionIndex:' nil #'stOperation' false).
  #('browse method' nil #'browseFullMethodMenuAction:selectionIndex:' nil #'stOperation' false).
  #('-').
  #('senders' $n #'browseSendersMenuAction:selectionIndex:' nil #'stMethodOperation' false).
  #('implementors' $m #'browseImplementorsMenuAction:selectionIndex:' nil #'stMethodOperation' false).
  #('-').
  #('install source' nil #'installSourceMenuAction:selectionIndex:' nil #'stOperation' false).
  #('install destination' nil #'installDestinationMenuAction:selectionIndex:' nil #'stOperation' false)}