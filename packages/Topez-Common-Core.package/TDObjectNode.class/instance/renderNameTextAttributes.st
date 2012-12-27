*topez-common-core
renderNameTextAttributes
  self renderAttributeBlock ifNil: [ ^ self class objectTextAttributes ].
  ^ self renderAttributeBlock value: self