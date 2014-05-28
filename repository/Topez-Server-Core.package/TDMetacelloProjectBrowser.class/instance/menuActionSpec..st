menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {{('Browse'
    ->
      {#('browse categories' nil #'browseProjectCategoriesMenuAction:selectionIndex:' nil #'loadedProject' false).
      #('browse classes' nil #'browseProjectClassesMenuAction:selectionIndex:' nil #'loadedProject' false).
      #('browse packages' nil #'browseProjectPackagesMenuAction:selectionIndex:' nil #'project' false)})}.
  #('-').
  #('edit' nil #'editProjectFileMenuAction:selectionIndex:' nil #'project' false).
  #('image changes' nil #'diffMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('load' nil #'loadProjectMenuAction:selectionIndex:' nil #'project' false).
  #('log' nil #'commitLogMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('push' nil #'gitPushProjectMenuAction:selectionIndex:' nil #'nonDirtyGitProject' false).
  #('revert' nil #'revertProjectMenuAction:selectionIndex:' nil #'dirtyProject' false).
  #('save' nil #'commitProjectMenuAction:selectionIndex:' nil #'writableRepoBasedProject' false).
  #('-').
  {('Git'
    ->
      {#('branches' nil #'gitBranchesMenuAction:selectionIndex:' nil #'gitProject' false).
      #('checkout' nil #'gitCheckoutMenuAction:selectionIndex:' nil #'nonDirtyGitProject' false).
      #('clone' nil #'cloneProjectMenuAction:selectionIndex:' nil #'githubProject' false).
      #('diff' nil #'gitDiffMenuAction:selectionIndex:' nil #'versionSkew' false).
      #('fetch' nil #'gitFetchMenuAction:selectionIndex:' nil #'gitProject' false).
      #('pull' nil #'gitPullProjectMenuAction:selectionIndex:' nil #'nonDirtyGitProject' false).
      #('merge' nil #'gitMergeProjectMenuAction:selectionIndex:' nil #'versionConflict' false).
      #('status' nil #'gitStatusMenuAction:selectionIndex:' nil #'gitProject' false)})}.
  #('-').
  {('Project'
    ->
      {#('get' nil #'getProjectMenuAction:selectionIndex:' nil #'project' false).
      #('lock' nil #'lockProjectMenuAction:selectionIndex:' nil #'baselineProject' false).
      #('unlock' nil #'unlockProjectMenuAction:selectionIndex:' nil #'baselineProject' false).
      #('unregister' nil #'unregisterProjectMenuAction:selectionIndex:' nil #'project' false)})}.
  {('Configuration' -> self configurationMenuActionSpec)}.
  #('-')} , self standardMenuActionSpec