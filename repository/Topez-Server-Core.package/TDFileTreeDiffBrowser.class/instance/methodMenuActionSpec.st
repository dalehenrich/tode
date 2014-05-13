menu action specs
methodMenuActionSpec
  ^ {#('browse class' $B #'browseFullClassMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('browse method' nil #'browseFullMethodMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('-').
  #('senders' $n #'browseSendersMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('implementors' $m #'browseImplementorsMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('-').
  #('install local' nil #'installLocalMenuAction:selectionIndex:' nil #'stMenuItem' false).
  #('install remote' nil #'installRemoteMenuAction:selectionIndex:' nil #'stMenuItem' false)}