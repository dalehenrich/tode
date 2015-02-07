menu action specs
smalltalkMenuActionSpec
  ^ {#('do it' $d #'doItMenuAction:selectedText:').
  #('print it' $p #'printItMenuAction:selectedText:').
  #('inspect it' $i #'inspectItMenuAction:selectedText:').
  #('edit it' nil #'editItMenuAction:selectedText:').
  #('debug it' $D #'debugItMenuAction:selectedText:').
  #('profile it' nil #'profileItMenuAction:selectedText:').
  #('tode it' $t #'todeItMenuAction:selectedText:')}