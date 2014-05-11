menu action specs
methodMenuActionSpec
  ^ {#('browse class' $n #'browseFullClassMenuAction:selectionIndex:').
  #('-').
  #('senders' $n #'browseSendersMenuAction:selectionIndex:').
  #('implementors' $m #'browseImplementorsMenuAction:selectionIndex:')}