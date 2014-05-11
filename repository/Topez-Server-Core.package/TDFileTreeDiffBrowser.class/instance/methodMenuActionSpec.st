menu action specs
methodMenuActionSpec
  ^ {#('browse class' $n #'browseFullClassMenuAction:selectionIndex:').
  #('browse method' $n #'browseFullMethodMenuAction:selectionIndex:').
  #('-').
  #('senders' $n #'browseSendersMenuAction:selectionIndex:').
  #('implementors' $m #'browseImplementorsMenuAction:selectionIndex:')}