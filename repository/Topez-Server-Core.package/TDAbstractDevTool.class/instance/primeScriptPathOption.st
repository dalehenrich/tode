as yet unclassified
primeScriptPathOption
  "used by browse and find commands"

  "find [--scriptPath=<tode-path>] find-command [<find-arguments>]"

  "browse [--scriptPath=<tode-path>] browse-command [<browse-arguments>]"

  self options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | scriptPath ifNil: [ self options at: 'scriptPath' put: '/home' ] ]