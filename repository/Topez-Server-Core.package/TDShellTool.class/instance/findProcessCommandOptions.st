as yet unclassified
findProcessCommandOptions
  "used by browse and find commands"

  "find [--scriptPath=<tode-path>] find-command [<find-arguments>]"

  "browse [--scriptPath=<tode-path>] browse-command [<browse-arguments>]"

  self getOptsMixedLongShort: {#('scriptPath' nil #'optional')}