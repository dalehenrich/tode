as yet unclassified
renderNameTextAttributes
    self renderAttributeBlock ifNil: [ ^ super renderNameTextAttributes ].
    ^ self renderAttributeBlock value: self