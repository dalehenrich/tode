menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('browse categories' nil #'browseProjectCategoriesMenuAction:selectionIndex:' nil #'loadedProject' false).
  #('browse classes' nil #'browseProjectClassesMenuAction:selectionIndex:' nil #'loadedProject' false).
  #('-').
  #('changes' nil #'diffMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('save' nil #'commitProjectMenuAction:selectionIndex:' nil #'writableRepoBasedProject' false).
  #('-').
  #('commit log' nil #'commitLogMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('status' nil #'gitStatusMenuAction:selectionIndex:' nil #'gitProject' false).
  #('version skew diff' nil #'gitVersionSkewDiffMenuAction:selectionIndex:' nil #'versionSkew' false).
  #('-').
  #('get' nil #'getProjectMenuAction:selectionIndex:' nil #'project' false).
  #('load' nil #'loadProjectMenuAction:selectionIndex:' nil #'project' false).
  #('lock' nil #'lockProjectMenuAction:selectionIndex:' nil #'baselineProject' false).
  #('revert' nil #'revertProjectMenuAction:selectionIndex:' nil #'dirtyProject' false).
  #('unlock' nil #'unlockProjectMenuAction:selectionIndex:' nil #'baselineProject' false).
  #('unregister' nil #'unregisterProjectMenuAction:selectionIndex:' nil #'project' false).
  #('-').
  #('edit project node' nil #'editProjectFileMenuAction:selectionIndex:' nil #'project' false).
  {('Baseline' -> self baselineMenuActionSpec)}.
  {('Configuration' -> self configurationMenuActionSpec)}.
  #('-')} , self standardMenuActionSpec