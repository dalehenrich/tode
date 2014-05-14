menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('image changes' nil #'imageDiffMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('commit' nil #'commitProjectMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('-').
  #('reload' nil #'reloadProjectMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('-').
  #('current commit log entry' nil #'lastCommitLogEntryMenuAction:selectionIndex:' nil #'gitProjectSelected' false).
  #('commit log' nil #'gitCommitLogMenuAction:selectionIndex:' nil #'gitProjectSelected' false).
  #('git status' nil #'gitStatusMenuAction:selectionIndex:' nil #'gitProjectSelected' false).
  #('-')} , self standardMenuActionSpec