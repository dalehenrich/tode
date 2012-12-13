as yet unclassified
elementRenderNameTextAttributes
    self elementRenderAttributeBlock ifNil: [ ^ super renderNameTextAttributes ].
    ^ self elementRenderAttributeBlock value: self