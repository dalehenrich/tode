menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('browse classes' nil #'browseProjectClassesMenuAction:selectionIndex:' nil #'project' false).
  #('-').
  #('changes' nil #'diffMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('save' nil #'commitProjectMenuAction:selectionIndex:' nil #'writableRepoBasedProject' false).
  #('-').
  #('get' nil #'getProjectMenuAction:selectionIndex:' nil #'project' false).
  #('load' nil #'loadProjectMenuAction:selectionIndex:' nil #'project' false).
  #('revert' nil #'revertProjectMenuAction:selectionIndex:' nil #'loadedProject' false).
  #('-').
  #('commit log' nil #'gitCommitLogMenuAction:selectionIndex:' nil #'gitProject' false).
  #('status' nil #'gitStatusMenuAction:selectionIndex:' nil #'gitProject' false).
  #('version skew diff' nil #'gitVersionSkewDiffMenuAction:selectionIndex:' nil #'versionSkew' false).
  #('-')} , self standardMenuActionSpec