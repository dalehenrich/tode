menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('get' nil #'getProjectMenuAction:selectionIndex:' nil #'project' false).
  #('load' nil #'loadProjectMenuAction:selectionIndex:' nil #'project' false).
  #('revert' nil #'revertProjectMenuAction:selectionIndex:' nil #'dirtyProject' false).
  #('-').
  #('browse classes' nil #'browseProjectClassesMenuAction:selectionIndex:' nil #'loadedProject' false).
  #('-').
  #('changes' nil #'diffMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('save' nil #'commitProjectMenuAction:selectionIndex:' nil #'writableRepoBasedProject' false).
  #('-').
  #('commit log' nil #'gitCommitLogMenuAction:selectionIndex:' nil #'gitProject' false).
  #('status' nil #'gitStatusMenuAction:selectionIndex:' nil #'gitProject' false).
  #('version skew diff' nil #'gitVersionSkewDiffMenuAction:selectionIndex:' nil #'versionSkew' false).
  #('-').
  #('edit project node' nil #'editProjectFileMenuAction:selectionIndex:' nil #'project' false).
  {('Baseline' -> self baselineMenuActionSpec)}.
  {('Configuration' -> self configurationMenuActionSpec)}.
  #('-')} , self standardMenuActionSpec