menu action specs
methodMenuActionSpec
  ^ {#('implementors in hierarchy' nil #'browseHierarchyImplementorsMenuAction:selectionIndex:' nil #'forMethod' false).
  #('implementors' $m #'browseImplementorsMenuAction:selectionIndex:' nil #'forMethod' false).
  #('senders' $n #'browseSendersMenuAction:selectionIndex:' nil #'forMethod' false).
  #('-').
  #('move to package' nil #'moveMethodToPackageMenuAction:selectionIndex:' nil #'forMethod' false).
  #('move to protocol' $M #'moveMethodToProtocolMenuAction:selectionIndex:' nil #'forMethod' false).
  #('remove method' $x #'cutObjectMenuAction:selectionIndex:' nil #'forMethod' false).
  #('-').
  {('Versions'
    ->
      {#('image' nil #'browseMethodVersionsMenuAction:selectionIndex:' nil #'forMethod' false).
      #('git' nil #'browseGitMethodVersionsMenuAction:selectionIndex:' nil #'forMethod' false)})}}