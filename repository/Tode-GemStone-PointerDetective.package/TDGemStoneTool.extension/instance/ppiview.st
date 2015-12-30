*tode-gemstone-pointerdetective
ppiview
  "
  ppi view [--globalName=<cache-name>]
"

  | globalName |
  self getSubcommandOptsMixedLongShort: {#('globalName' nil #'required')}.
  globalName := self ppiGlobalName