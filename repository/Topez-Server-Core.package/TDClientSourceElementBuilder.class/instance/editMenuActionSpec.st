menu action specs
editMenuActionSpec
  ^ {#('cut' $x #'cutSelection' #'executeLocalMenuAction:').
  #('copy' $c #'copySelection' #'executeLocalMenuAction:').
  #('paste' $v #'pasteSelection' #'executeLocalMenuAction:').
  #('paste...' nil #'pasteRecent' #'executeLocalMenuAction:')}