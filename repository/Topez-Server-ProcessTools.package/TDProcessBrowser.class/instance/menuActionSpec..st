tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('attach' $a #'attachProcess:selectionIndex:').
  #('debug' $d #'debugProcess:selectionIndex:').
  #('-').
  #('kill' $k #'killProcess:selectionIndex:').
  #('terminate' $t #'terminateProcess:selectionIndex:').
  #('portable' nil #'portableProcess:selectionIndex:').
  #('-').
  #('yield' $y #'yield:selectionIndex:').
  #('refresh list' $l #'refreshListMenuAction:selectionIndex:').
  #('-')} , self standardMenuActionSpec