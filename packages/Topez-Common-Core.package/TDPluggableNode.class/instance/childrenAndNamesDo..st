as yet unclassified
childrenAndNamesDo: aBlock
  ^ (self listBlock value: self)
    do: [ :elementName | 
      | child |
      child := self childNamed: elementName ifAbsent: [  ].
      aBlock
        value: child
        value:
          (self
            renderNameText: elementName , (self elementExtension: elementName)
            textAttributes: (self elementRenderNameTextAttributes: elementName)) ]