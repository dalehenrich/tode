menu action specs
configurationMenuActionSpec
  ^ {#('create new major version' nil #'createConfigurationNewMajorVersionMenuAction:selectionIndex:' nil #'configurationProject' false).
  #('create new minor version' nil #'createConfigurationNewMinorVersionMenuAction:selectionIndex:' nil #'configurationProject' false).
  #('create new patch version' nil #'createConfigurationNewPatchVersionMenuAction:selectionIndex:' nil #'configurationProject' false).
  #('-').
  #('release version' nil #'createReleaseConfigurationVersionMenuAction:selectionIndex:' nil #'configurationProject' false).
  #('-').
  #('switch version' nil #'switchConfigurationVersionMenuAction:selectionIndex:' nil #'configurationProject' false).
  #('load version' nil #'loadConfigurationVersionMenuAction:selectionIndex:' nil #'configurationProject' false)}