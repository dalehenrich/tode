as yet unclassified
elementRenderNameTextAttributes: elementName
    self elementRenderAttributeBlock ifNil: [ ^ self renderNameTextAttributes ].
    ^ self elementRenderAttributeBlock value: self value: elementName