menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {{('Browse'
    ->
      {#('baseline' nil #'editProjectBaselineMenuAction:selectionIndex:' nil #'baselineProject' false).
      #('configuration' nil #'editProjectConfigurationMenuAction:selectionIndex:' nil #'configurationProject' false).
      #('project entry' nil #'editProjectFileMenuAction:selectionIndex:' nil #'project' false).
      #('-').
      #('categories' nil #'browseProjectCategoriesMenuAction:selectionIndex:' nil #'loadedProject' false).
      #('classes' nil #'browseProjectClassesMenuAction:selectionIndex:' nil #'loadedProject' false).
      #('-').
      #('dirty packages' nil #'browseProjectDirtyPackagesMenuAction:selectionIndex:' nil #'metacelloProject' false).
      #('packages' nil #'browseProjectPackagesMenuAction:selectionIndex:' nil #'metacelloProject' false).
      #('repositories' nil #'browseProjectRepositoriesMenuAction:selectionIndex:' nil #'metacelloProject' false).
      #('-').
      #('tests' nil #'testProjectMenuAction:selectionIndex:' nil #'loadedProject' false)})}.
  {('Find'
    ->
      {#('Class...' nil #'findClass:selectedIndex:').
      #('Hierarchy Browser...' nil #'findClassHierarchy:selectedIndex:').
      #('Class References...' nil #'findClassReferences:selectedIndex:').
      #('Method...' nil #'findMethodImplementors:selectedIndex:').
      #('String...' nil #'findStringNoCase:selectedIndex:').
      #('Senders...' nil #'findMethodSenders:selectedIndex:')})}.
  #('-').
  {('Git'
    ->
      {#('branches' nil #'gitBranchesMenuAction:selectionIndex:' nil #'gitProject' false).
      #('checkout' nil #'gitCheckoutMenuAction:selectionIndex:' nil #'gitProject' false).
      #('clone' nil #'cloneProjectMenuAction:selectionIndex:' nil #'gitBasedProject' false).
      #('diff' nil #'gitDiffMenuAction:selectionIndex:' nil #'gitProject' false).
      #('diff (cached)' nil #'gitDiffCachedMenuAction:selectionIndex:' nil #'gitProject' false).
      #('fetch' nil #'gitFetchMenuAction:selectionIndex:' nil #'gitProject' false).
      #('pull' nil #'gitPullProjectMenuAction:selectionIndex:' nil #'nonDirtyGitProject' false).
      #('reset' nil #'gitResetProjectMenuAction:selectionIndex:' nil #'gitProject' false).
      #('status' nil #'gitStatusMenuAction:selectionIndex:' nil #'gitProject' false)})}.
  #('-').
  #('changes' nil #'diffMenuAction:selectionIndex:' nil #'repoBasedProject' false).
  #('load' nil #'loadProjectMenuAction:selectionIndex:' nil #'metacelloProject' false).
  #('log' nil #'commitLogMenuAction:selectionIndex:' nil #'loggableProject' false).
  #('merge' nil #'gitMergeProjectMenuAction:selectionIndex:' nil #'nonDirtyGitProject' false).
  #('push' nil #'gitPushProjectMenuAction:selectionIndex:' nil #'nonDirtyGitProject' false).
  #('refresh (unloaded)' nil #'refreshProjectEntriesMenuAction:selectionIndex:').
  #('revert' nil #'revertProjectMenuAction:selectionIndex:' nil #'dirtyProject' false).
  #('save' nil #'commitProjectMenuAction:selectionIndex:' nil #'writableRepoBasedProject' false).
  #('skew diff' nil #'gitVersionSkewDiffMenuAction:selectionIndex:' nil #'versionSkew' false).
  #('skew save' nil #'gitVersionSkewSaveProjectMenuAction:selectionIndex:' nil #'versionSkew' false).
  #('-').
  {('Project'
    ->
      {#('get' nil #'getProjectMenuAction:selectionIndex:' nil #'metacelloProject' false).
      #('lock' nil #'lockProjectMenuAction:selectionIndex:' nil #'metacelloProject' false).
      #('unlock' nil #'unlockProjectMenuAction:selectionIndex:' nil #'metacelloProject' false).
      #('unregister' nil #'unregisterProjectMenuAction:selectionIndex:' nil #'metacelloProject' false)})}.
  #('-').
  {('Configuration' -> self configurationMenuActionSpec)}.
  #('-')} , self standardMenuActionSpec