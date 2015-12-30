*tode-gemstone-pointerdetective
ppicalc
  "
  ppi calc [--maxPaths=<max-paths>] [--globalName=<cache-name>] \
           [ --st=<st-expression> | oop... ]
"

  | objects maxPaths searchResult ppiRefPath globalName |
  self
    getSubcommandOptsMixedLongShort:
      {#('globalName' nil #'required').
      #('st' nil #'required').
      #('maxPaths' nil #'required')}.
  globalName := self ppiGlobalName.
  subOptions
    at: 'maxPaths'
    ifPresent: [ :arg | maxPaths := arg asNumber ]
    ifAbsent: [ maxPaths := 32 ].
  objects := subOptions
    at: 'st'
    ifPresent: [ :expression | expression evaluate ]
    ifAbsent: [ (subArguments collect: [ :oop | Object _objectForOop: oop asNumber ]) asArray ].
  System abort.
  searchResult := SystemRepository
    findAllReferencePathsToObjects: objects
    maxPaths: maxPaths.
  ppiRefPath := TDPPIReferencePaths searchResult: searchResult.
  UserGlobals at: globalName put: ppiRefPath.
  System commit.
  ppiRefPath analyze.
  System commit.
  ^ ppiRefPath