menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {{('Browse'
    ->
      {#('browse categories' nil #'browseProjectCategoriesMenuAction:selectionIndex:' nil #'loadedProject' false).
      #('browse classes' nil #'browseProjectClassesMenuAction:selectionIndex:' nil #'loadedProject' false).
      #('browse packages' nil #'browseProjectPackagesMenuAction:selectionIndex:' nil #'project' false)})}.
  #('-').
  #('changes' nil #'diffMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('edit' nil #'editProjectFileMenuAction:selectionIndex:' nil #'project' false).
  #('load' nil #'loadProjectMenuAction:selectionIndex:' nil #'project' false).
  #('push' nil #'gitPushProjectMenuAction:selectionIndex:' nil #'gitProject' false).
  #('save' nil #'commitProjectMenuAction:selectionIndex:' nil #'writableRepoBasedProject' false).
  #('-').
  {('Git'
    ->
      {#('commit log' nil #'commitLogMenuAction:selectionIndex:' nil #'repoBasedProject' false).
      #('diff' nil #'gitDiffMenuAction:selectionIndex:' nil #'versionSkew' false).
      #('pull' nil #'gitPullProjectMenuAction:selectionIndex:' nil #'gitProject' false).
      #('merge' nil #'gitMergeProjectMenuAction:selectionIndex:' nil #'versionConflict' false).
      #('status' nil #'gitStatusMenuAction:selectionIndex:' nil #'gitProject' false)})}.
  #('-').
  {('Project'
    ->
      {#('clone' nil #'cloneProjectMenuAction:selectionIndex:' nil #'githubProject' false).
      #('get' nil #'getProjectMenuAction:selectionIndex:' nil #'project' false).
      #('lock' nil #'lockProjectMenuAction:selectionIndex:' nil #'baselineProject' false).
      #('revert' nil #'revertProjectMenuAction:selectionIndex:' nil #'dirtyProject' false).
      #('unlock' nil #'unlockProjectMenuAction:selectionIndex:' nil #'baselineProject' false).
      #('unregister' nil #'unregisterProjectMenuAction:selectionIndex:' nil #'project' false)})}.
  {('Configuration' -> self configurationMenuActionSpec)}.
  #('-')} , self standardMenuActionSpec