reflection
configurationOf
  ^ self packageOf ifNotNil: [ :pkg | pkg configurationOf ]