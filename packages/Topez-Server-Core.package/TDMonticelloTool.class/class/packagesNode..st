as yet unclassified
packagesNode: anMcRepository
  | contentsMap |
  contentsMap := Dictionary new.
  contentsMap
    at: #'map'
    put: [ :dict | 
      | map |
      map := dict
        at: #'value'
        ifAbsent: [ 
          map := Dictionary new.
          anMcRepository readableFileNames
            do: [ :name | 
              | versionReference versions packageName |
              versionReference := GoferResolvedReference name: name repository: anMcRepository.
              packageName := versionReference packageName.
              versionReference branch isEmpty
                ifFalse: [ packageName := packageName , '.' , versionReference branch ].
              versions := map at: packageName ifAbsent: [ map at: packageName put: OrderedCollection new ].
              versions add: versionReference ].
          dict at: #'value' put: map ].
      map ].
  ^ TDPluggableNode new
    name: 'repos';
    readMe: 'TDMonticelloTool class>>packagesNode:';
    basicContents: contentsMap;
    listBlock: [ :theNode | 
          | cMap mapBlock |
          cMap := theNode basicContents.
          mapBlock := cMap at: #'map'.
          (mapBlock value: cMap) keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | cMap mapBlock |
          cMap := theNode basicContents.
          mapBlock := cMap at: #'map'.
          (self versionsNode: ((mapBlock value: cMap) at: elementName))
            name: elementName;
            parent: theNode;
            yourself ];
    yourself