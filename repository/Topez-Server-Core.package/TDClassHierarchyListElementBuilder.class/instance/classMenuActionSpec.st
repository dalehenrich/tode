menu action specs
classMenuActionSpec
  ^ {{('Add'
    ->
      {#('class ' nil #'addClassMenuAction:selectionIndex:').
      #('subClass' nil #'addSubClassMenuAction:selectionIndex:')})}.
  {('Class'
    ->
      {#('comment' nil #'commentClassMenuAction:selectionIndex:').
      #('copy to' nil #'copyClassMenuAction:selectionIndex:').
      #('create accessors' nil #'createAccessorsMenuAction:selectionIndex:').
      #('file out' nil #'fileOutClassMenuAction:selectionIndex:').
      #('git history' nil #'browseGitClassHistoryMenuAction:selectionIndex:').
      #('move to package' nil #'moveClassToPackageMenuAction:selectionIndex:').
      #('references' nil #'referencesToClassMenuAction:selectionIndex:').
      #('remove' nil #'removeClassMenuAction:selectionIndex:').
      #('rename' nil #'renameClassMenuAction:selectionIndex:').
      {('Variable references'
        ->
          {#('class' nil #'classVariableReferencesMenuAction:selectionIndex:').
          #('class instance' nil #'classInstanceVariableReferencesMenuAction:selectionIndex:').
          #('instance' nil #'instanceVariableReferencesMenuAction:selectionIndex:')})}})}.
  #('run tests' nil #'runClassTestsMenuAction:selectionIndex:')}