menu action specs
classMenuActionSpec
  ^ {{('Class'
    ->
      {#('add class ' nil #'addClassMenuAction:selectionIndex:' nil #'hasClass' false).
      #('add subClass' nil #'addSubClassMenuAction:selectionIndex:' nil #'hasClass' false).
      #('-').
      #('browse class' $b #'browseClassDefinitionMenuAction:selectionIndex:' nil #'hasClass' false).
      #('browse full' $B #'browseFullClassMenuAction:selectionIndex:' nil #'hasClass' false).
      #('comment' nil #'commentClassMenuAction:selectionIndex:' nil #'hasClass' false).
      #('copy to' nil #'copyClassMenuAction:selectionIndex:' nil #'forClass' false).
      #('create accessors' nil #'createAccessorsMenuAction:selectionIndex:' nil #'hasClass' false).
      #('file out' nil #'fileOutClassMenuAction:selectionIndex:' nil #'hasClass' false).
      #('git history' nil #'browseGitClassHistoryMenuAction:selectionIndex:' nil #'hasClass' false).
      #('move to package' nil #'moveClassToPackageMenuAction:selectionIndex:' nil #'forClass' false).
      #('-').
      #('references to class' nil #'referencesToClassMenuAction:selectionIndex:' nil #'hasClass' false).
      #('references to class variable' nil #'classVariableReferencesMenuAction:selectionIndex:' nil #'hasClass' false).
      #('references to class instance variable' nil #'classInstanceVariableReferencesMenuAction:selectionIndex:' nil #'hasClass' false).
      #('references to instance variable' nil #'instanceVariableReferencesMenuAction:selectionIndex:' nil #'hasClass' false).
      #('-').
      #('remove' nil #'removeClassMenuAction:selectionIndex:' nil #'forClass' false).
      #('rename' nil #'renameClassMenuAction:selectionIndex:' nil #'forClass' false).
      #('-').
      #('run class tests' nil #'runClassTestsMenuAction:selectionIndex:' nil #'forClass' false)})}}