menu action specs
methodMenuActionSpec
  ^ {#('senders' $n #'browseSendersMenuAction:selectionIndex:').
  #('implementors' $m #'browseImplementorsMenuAction:selectionIndex:').
  #('versions' nil #'browseMethodVersionsMenuAction:selectionIndex:')}