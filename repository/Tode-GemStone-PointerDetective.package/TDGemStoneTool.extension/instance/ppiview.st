*tode-gemstone-pointerdetective
ppiview
  "
  ppi view [--globalName=<cache-name>]
"

  | globalName ppiRefPath clientRoassalElement |
  self getSubcommandOptsMixedLongShort: {#('globalName' nil #'required')}.
  globalName := self ppiGlobalName.
  ppiRefPath := UserGlobals at: globalName.
  clientRoassalElement := TodeClientRoassalElement new
    theObject: ppiRefPath;
    childrenBlock: [ :cre :aTDPPINode | cre objectSerializer toString: aTDPPINode children asArray ];
    parentsBlock: [ :cre :aTDPPINode | cre objectSerializer toString: aTDPPINode parents asArray ];
    usePersistentClientElementCache: false;
    windowBuilder: self;
    editorAspectSelector: #'activateRoassalEditor';
    editorWindowLabel: 'xxx';
    editorWindowLocation: #'method';
    timestamp;
    yourself.
  self topez editElement: clientRoassalElement