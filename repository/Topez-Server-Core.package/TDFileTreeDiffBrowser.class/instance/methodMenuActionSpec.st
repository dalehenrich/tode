menu action specs
methodMenuActionSpec
  ^ {#('browse full' $B #'browseFullClassMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('browse method' nil #'browseFullMethodMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('-').
  #('implementors' $m #'browseImplementorsMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('senders' $n #'browseSendersMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('-').
  #('install source' nil #'installSourceMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('install destination' nil #'installDestinationMenuAction:selectionIndex:' nil #'stMenuItem' false)}