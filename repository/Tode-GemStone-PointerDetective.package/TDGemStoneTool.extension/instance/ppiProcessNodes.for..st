*tode-gemstone-pointerdetective
ppiProcessNodes: aNodeList for: aClientRoassalElement
  aNodeList
    do: [ :each | 
      each
        myOop;
        clientElement: aClientRoassalElement ].
  ^ aNodeList