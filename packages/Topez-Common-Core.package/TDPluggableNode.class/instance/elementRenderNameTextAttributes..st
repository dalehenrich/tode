as yet unclassified
elementRenderNameTextAttributes: elementName
    self elementRenderAttributeBlock ifNil: [ ^ super renderNameTextAttributes ].
    ^ self elementRenderAttributeBlock value: self value: elementName