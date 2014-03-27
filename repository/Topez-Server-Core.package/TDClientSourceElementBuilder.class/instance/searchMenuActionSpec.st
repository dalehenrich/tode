menu action specs
searchMenuActionSpec
  ^ {#('browse it' $b #'browseItFullMenuAction:selectedText:').
  #('implementors of it' $m #'implementorsOfItMenuAction:selectedText:').
  #('senders of it' $n #'sendersOfItMenuAction:selectedText:').
  #('browse references to it' $N #'browseReferencesToItMenuAction:selectedText:').
  #('-').
  #('regex implementors' nil #'regexImplementorsMenuAction:selectedText:').
  #('regex senders' nil #'regexSendersMenuAction:selectedText:').
  #('regex source' nil #'regexSourceMenuAction:selectedText:').
  #('-').
  #('browse category' nil #'browseCategoryMenuAction:selectedText:').
  #('browse package' nil #'browsePackageMenuAction:selectedText:').
  #('browse project' nil #'browseProjectMenuAction:selectedText:')}