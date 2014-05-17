menu action specs
configurationMenuActionSpec
  ^ {#('create new version' nil #'createConfigurationVersionMenuAction:selectionIndex:' nil #'configurationProject' false).
  #('create release version' nil #'createReleaseConfigurationVersionMenuAction:selectionIndex:' nil #'configurationProject' false).
  #('-').
  #('switch version' nil #'switchConfigurationVersionMenuAction:selectionIndex:' nil #'configurationProject' false).
  #('load version' nil #'loadConfigurationVersionMenuAction:selectionIndex:' nil #'configurationProject' false)}