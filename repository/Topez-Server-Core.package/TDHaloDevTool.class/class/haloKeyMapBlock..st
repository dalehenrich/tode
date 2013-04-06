as yet unclassified
haloKeyMapBlock: aTDTopezServer
  | dictionary |
  dictionary := self keyMapDictionary.
  ^ [ :parentNode | 
  TDObjectNode new
    name: '.keymap';
    basicContents: dictionary;
    parent: parentNode;
    readMe: self readMeKeyMap;
    listBlock: [ :theNode | theNode basicContents keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          ((theNode basicContents at: elementName ifAbsent: absentBlock)
            asTDObjectNode: theNode
            topez: theNode topez
            aspect: #'view')
            name: elementName;
            yourself ];
    yourself ]