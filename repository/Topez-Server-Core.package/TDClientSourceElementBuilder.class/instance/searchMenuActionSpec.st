menu action specs
searchMenuActionSpec
  ^ {#('browse it' nil #'browseItFullMenuAction:selectedText:').
  #('implementors of it' $m #'implementorsOfItMenuAction:selectedText:').
  #('senders of it' $n #'sendersOfItMenuAction:selectedText:').
  #('browse references to it' $N #'browseReferencesToItMenuAction:selectedText:').
  #('-').
  #('source references (regex)' nil #'regexSourceMenuAction:selectedText:').
  #('-').
  #('browse it (regex)' $b #'browseItMenuAction:selectedText:').
  #('implementors of it (regex)' nil #'regexImplementorsMenuAction:selectedText:').
  #('senders of it (regex)' nil #'regexSendersMenuAction:selectedText:').
  #('-').
  #('senders of it (pure)' nil #'pureSendersMenuAction:selectedText:').
  #('-').
  #('browse category' nil #'browseCategoryMenuAction:selectedText:').
  #('browse package' nil #'browsePackageMenuAction:selectedText:').
  #('browse project' nil #'browseProjectMenuAction:selectedText:')}