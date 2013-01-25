as yet unclassified
stGlobalsNode: aTopez
  <topezNode: 'globals'>
  | node directory |
  node := aTopez installChildrenAt: '/st'.
  node
    addChildNode:
      (TDPluggableNode new
        name: 'globals';
        readMe: self globalsReadMe;
        basicContents: [ :selector :globalName | 
              | user symbolList |
              user := GsCurrentSession currentSession userProfile.
              symbolList := user symbolList.
              selector == #'list'
                ifTrue: [ 
                  | globalAssocs |
                  globalAssocs := IdentitySet new.
                  symbolList do: [ :dict | globalAssocs addAll: dict associations ].
                  globalAssocs := globalAssocs select: [ :assoc | assoc value isBehavior not ].
                  globalAssocs asArray sort: [ :a :b | a key <= b key ] ]
                ifFalse: [ 
                  "selector == #'global'"
                  symbolList resolveSymbol: globalName asSymbol ] ];
        elementExtensionBlock: [ :theNode :elementName | theNode class objectExtension ];
        elementRenderAttributeBlock: [ :theNode :elementName | theNode class objectTextAttributes ];
        listBlock: [ :theNode | (theNode basicContents value: #'list' value: nil) collect: [ :assoc | assoc key asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
              | assoc |
              assoc := theNode basicContents value: #'global' value: elementName.
              (assoc value asTDObjectNode: theNode topez: theNode topez aspect: #'view')
                name: assoc key asString;
                yourself ];
        yourself)