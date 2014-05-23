menu action specs
methodMenuActionSpec
  ^ {#('senders' $n #'browseSendersMenuAction:selectionIndex:').
  #('implementors' $m #'browseImplementorsMenuAction:selectionIndex:').
  {('Versions'
    ->
      {#('image' nil #'browseMethodVersionsMenuAction:selectionIndex:').
      #('git' nil #'browseGitMethodVersionsMenuAction:selectionIndex:')})}}