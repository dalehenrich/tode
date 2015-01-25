menu action specs
operationsMenuActionSpec
  ^ {#('view default' nil #'viewDefaultMenuAction:selectionIndex:').
  #('-').
  #('view ancestor' nil #'viewAncestorMenuAction:selectionIndex:').
  #('view us' nil #'viewUsMenuAction:selectionIndex:').
  #('view them' nil #'viewThemMenuAction:selectionIndex:').
  #('view custom' nil #'viewCustomMenuAction:selectionIndex:').
  #('-').
  #('view ancestor vs us' nil #'viewAncestorVsUsMenuAction:selectionIndex:').
  #('view ancestor vs them' nil #'viewAncestorVsThemMenuAction:selectionIndex:').
  #('view ancestor vs custom' nil #'viewAncestorVsCustomMenuAction:selectionIndex:').
  #('-').
  #('view us vs them' nil #'viewUsVsThemMenuAction:selectionIndex:').
  #('view us vs custom' nil #'viewUsVsCustomMenuAction:selectionIndex:').
  #('-').
  #('view them vs us' nil #'viewThemVsUsMenuAction:selectionIndex:').
  #('view them vs custom' nil #'viewThemVsCustomMenuAction:selectionIndex:').
  #('-').
  #('choose ancestor' $a #'selectAncestorMenuAction:selectionIndex:').
  #('choose us' $u #'selectUsMenuAction:selectionIndex:').
  #('choose them' $t #'selectThemMenuAction:selectionIndex:').
  #('choose custom' $c #'selectCustomMenuAction:selectionIndex:').
  #('-').
  #('do merge' $j #'doMergeMenuAction:selectionIndex:').
  #('-').
  #('toggle view same source' nil #'toggleViewSameSource:selectionIndex:').
  #('-').
  #('set (clear) class filter' nil #'selectClassOperations:selectionIndex:')}