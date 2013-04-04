as yet unclassified
haloDebugBlock: aTDTopezServer
  | directory |
  directory := Dictionary new.
  directory
    at: 'breakpoints'
      put: [ :theNode :nodeName | 
          (self breakpointNode: theNode)
            name: nodeName;
            yourself ];
    at: 'exception'
      put: [ :theNode :nodeName | 
          (theNode topez serverStatus exception asTDObjectNode: theNode topez: theNode topez aspect: #'view')
            name: nodeName;
            yourself ];
    at: 'stack'
      put: [ :theNode :nodeName | 
          | debugTool debugNode |
          debugTool := self
            topez: aTDTopezServer
            objIn: nil
            tokens: #()
            windowId: nil.
          debugNode := debugTool
            debugNode: theNode
            process: theNode topez serverStatus exceptionProcess
            exception: theNode topez serverStatus exception.
          debugNode
            name: nodeName;
            yourself ];
    yourself.
  ^ [ :parentNode | 
  TDObjectNode new
    name: '.debug';
    basicContents: directory;
    parent: parentNode;
    readMe: self haloReadMe;
    elementExtensionBlock: [ :theNode :elementName | theNode class objectExtension ];
    elementRenderAttributeBlock: [ :theNode :elementName | theNode class objectTextAttributes ];
    listBlock: [ :theNode | theNode basicContents keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | block |
          block := theNode basicContents at: elementName ifAbsent: absentBlock.
          block ifNotNil: [ block value: theNode value: elementName ] ];
    yourself ]