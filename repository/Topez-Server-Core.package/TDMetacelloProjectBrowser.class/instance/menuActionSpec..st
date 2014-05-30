menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {{('Browse'
    ->
      {#('categories' nil #'browseProjectCategoriesMenuAction:selectionIndex:' nil #'loadedProject' false).
      #('classes' nil #'browseProjectClassesMenuAction:selectionIndex:' nil #'loadedProject' false).
      #('dirty packages' nil #'browseProjectDirtyPackagesMenuAction:selectionIndex:' nil #'project' false).
      #('packages' nil #'browseProjectPackagesMenuAction:selectionIndex:' nil #'project' false).
      #('repositories' nil #'browseProjectRepositoriesMenuAction:selectionIndex:' nil #'project' false)})}.
  #('-').
  {('Git'
    ->
      {#('branches' nil #'gitBranchesMenuAction:selectionIndex:' nil #'gitProject' false).
      #('checkout' nil #'gitCheckoutMenuAction:selectionIndex:' nil #'gitProject' false).
      #('clone' nil #'cloneProjectMenuAction:selectionIndex:' nil #'githubProject' false).
      #('diff' nil #'gitDiffMenuAction:selectionIndex:' nil #'gitProject' false).
      #('diff (cached)' nil #'gitDiffCachedMenuAction:selectionIndex:' nil #'gitProject' false).
      #('fetch' nil #'gitFetchMenuAction:selectionIndex:' nil #'gitProject' false).
      #('pull' nil #'gitPullProjectMenuAction:selectionIndex:' nil #'nonDirtyGitProject' false).
      #('status' nil #'gitStatusMenuAction:selectionIndex:' nil #'gitProject' false)})}.
  #('-').
  #('changes' nil #'diffMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('edit' nil #'editProjectFileMenuAction:selectionIndex:' nil #'project' false).
  #('load' nil #'loadProjectMenuAction:selectionIndex:' nil #'project' false).
  #('log' nil #'commitLogMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('merge' nil #'gitMergeProjectMenuAction:selectionIndex:' nil #'nonDirtyGitProject' false).
  #('push' nil #'gitPushProjectMenuAction:selectionIndex:' nil #'nonDirtyGitProject' false).
  #('revert' nil #'revertProjectMenuAction:selectionIndex:' nil #'dirtyProject' false).
  #('save' nil #'commitProjectMenuAction:selectionIndex:' nil #'writableRepoBasedProject' false).
  #('skew diff' nil #'gitVersionSkewDiffMenuAction:selectionIndex:' nil #'versionSkew' false).
  #('skew save' nil #'gitVersionSkewSaveProjectMenuAction:selectionIndex:' nil #'versionSkew' false).
  #('-').
  {('Project'
    ->
      {#('get' nil #'getProjectMenuAction:selectionIndex:' nil #'project' false).
      #('lock' nil #'lockProjectMenuAction:selectionIndex:' nil #'baselineProject' false).
      #('unlock' nil #'unlockProjectMenuAction:selectionIndex:' nil #'baselineProject' false).
      #('unregister' nil #'unregisterProjectMenuAction:selectionIndex:' nil #'project' false)})}.
  #('-').
  {('Configuration' -> self configurationMenuActionSpec)}.
  #('-')} , self standardMenuActionSpec