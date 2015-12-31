*tode-gemstone-pointerdetective
ppiview
  "
  ppi view [--globalName=<cache-name>]
"

  | globalName ppiRefPath clientRoassalElement |
  self getSubcommandOptsMixedLongShort: {#('globalName' nil #'required')}.
  globalName := self ppiGlobalName.
  ppiRefPath := UserGlobals at: globalName.
  ppiRefPath isCacheValid
    ifFalse: [ 
      self
        error:
          'the ppi view command must be used in the same session that ppi calc was run.' ].
  clientRoassalElement := TodeClientRoassalElement new
    theObject: ppiRefPath;
    usePersistentClientElementCache: false;
    windowBuilder: self;
    editorAspectSelector: #'activateRoassalEditor';
    editorWindowLabel: 'xxx';
    editorWindowLocation: #'method';
    topez: self topez;
    timestamp;
    yourself.
  clientRoassalElement
    childrenBlock: [ :cre :aTDPPINode | 
          self topez objectSerializer
            toString:
              (self ppiProcessNodes: aTDPPINode children asArray for: clientRoassalElement) ];
    parentsBlock: [ :cre :aTDPPINode | 
          self topez objectSerializer
            toString:
              (self ppiProcessNodes: aTDPPINode parents asArray for: clientRoassalElement) ];
    initialNodes:
        (self ppiProcessNodes: ppiRefPath searchNodeMap keys for: clientRoassalElement).
  self topez cacheClientElement: clientRoassalElement.
  self topez editElement: clientRoassalElement